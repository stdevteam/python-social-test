from abc import ABCMeta, abstractmethod
from database.database import DBConnection
from exceptions.modelexceptions import FieldNotFoundException, ValueNotFoundException, ResultNotFoundException


class BaseModel(metaclass=ABCMeta):
    def __init__(self):
        self.__connection = DBConnection()

    @property
    @abstractmethod
    def _table_name(self) -> str:
        pass

    @property
    @abstractmethod
    def _fields(self) -> tuple:
        pass

    def __check_fields(self, *fields):
        """
        Check for existing columns
        :param fields: filtering columns
        """
        for field in fields:
            if field not in self._fields:
                raise FieldNotFoundException(f"Column '{field}' not found in '{self._table_name}' table")

    def create(self, **kwargs):
        """
        Create a record in table
        :param kwargs: values for inserting
        """
        self.__check_fields(*kwargs)
        keys_and_vals = self.__get_converted_keys_and_values(**kwargs)
        keys = ', '.join(keys_and_vals.get('keys'))
        values = keys_and_vals.get('values')
        sql = f"INSERT INTO {self._table_name} ({keys}) VALUES ({', '.join(['%s'] * len(values))})"
        self.__connection.cursor.execute(sql, values)
        self.__connection.conn.commit()

    def filter(self, **kwargs) -> list:
        """
        Select records by given filters
        :param kwargs:
        :return: list of selected values
        """
        self.__check_fields(*kwargs)
        sql = f"SELECT * FROM {self._table_name}"
        if kwargs:
            sql += " WHERE " + self.__get_fetched_string_for_where_statement(**kwargs)
        self.__connection.cursor.execute(sql)
        result = self.__connection.cursor.fetchall()
        columns = [desc[0] for desc in self.__connection.cursor.description]
        return [{columns[index]:column for index, column in enumerate(value)} for value in result]

    def get(self, **kwargs) -> dict or None:
        """
        Select a record by given filters
        :param kwargs:
        :return: dict or None
        """
        self.__check_fields(*kwargs)
        if not kwargs:
            raise ValueNotFoundException("Filtering columns not found")
        sql = f"SELECT * FROM {self._table_name} WHERE " + self.__get_fetched_string_for_where_statement(**kwargs)
        self.__connection.cursor.execute(sql)
        result = self.__connection.cursor.fetchone()
        columns = [desc[0] for desc in self.__connection.cursor.description]
        if result:
            return [{columns[index]: value for index, value in enumerate(result)}][0]
        return None

    def update(self, where: dict, **updating):
        res = self.get(**where)
        if not res:
            raise ResultNotFoundException("Requested entity not found")

        sql = f"UPDATE {self._table_name} SET {self.__get_fetched_string_for_update_statement(**updating)} "
        sql += f"WHERE {self.__get_fetched_string_for_where_statement(**where)}"
        values = self.__get_converted_keys_and_values(**updating).get('values')
        self.__connection.cursor.execute(sql, values)
        self.__connection.conn.commit()

    def delete(self, **where):
        res = self.get(**where)
        if not res:
            raise ResultNotFoundException("Requested entity not found")
        sql = f"DELETE FROM {self._table_name} WHERE {self.__get_fetched_string_for_where_statement(**where)}"
        self.__connection.cursor.execute(sql)
        self.__connection.conn.commit()

    @staticmethod
    def __get_converted_keys_and_values(**kwargs) -> dict:
        """
        Simple function to convert keys and values from dict
        :param kwargs: columns with values
        :return: dict with kwarg keys and values
        """
        return {'keys': tuple(kwargs.keys()), 'values': tuple(kwargs.values())}

    @staticmethod
    def __get_fetched_string_for_where_statement(**kwargs) -> str:
        """
        Simple function to make the dict compatible with where statement key=value
        :param kwargs: columns with values
        :return: str
        """
        return ' AND '.join([f"{key} = '{value}'" for key, value in kwargs.items()])

    @staticmethod
    def __get_fetched_string_for_update_statement(**kwargs) -> str:
        """
        Simple function to make the dict compatible with update statement key=value
        :param kwargs: columns with values
        :return: str
        """
        return ' , '.join([f"{key} = %s" for key, value in kwargs.items()])