from abc import ABCMeta, abstractmethod
from database.database import DBConnection
from exceptions.modelexceptions import FieldNotFoundException, ValueNotFoundException, ResultNotFoundException, \
    ArgumentException


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

    @property
    @abstractmethod
    def _primary_key(self) -> str:
        pass

    @property
    def _foreign_key(self) -> str:
        pass

    def __check_fields(self, *fields):
        """
        Check for existing columns
        :param fields: filtering columns
        """
        for field in fields:
            if field not in self._fields:
                raise FieldNotFoundException(f"Column '{field}' not found in '{self._table_name}' table")

    def create(self, **kwargs) -> dict or None:
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
        if self.__connection.cursor.rowcount == 1:
            kwargs[self._primary_key] = self.__connection.cursor.lastrowid
            return kwargs
        return None

    def filter(self, **kwargs) -> list:
        """
        Select records by given filters
        :param kwargs:
        """
        self.__check_fields(*kwargs)
        sql = f"SELECT * FROM {self._table_name}"
        if kwargs:
            sql += " WHERE " + self.__get_fetched_string_for_where_statement(**kwargs)
        return self.__fetch_mysql_data(sql)

    # TODO attach with self.filter
    def filter_in(self, column_name: str, values: tuple or list) -> list:
        """
        Select records where in given filters
        :param column_name: column name for where in statement
        :param values: list or tuple for where in statement
        """
        self.__check_fields(column_name)
        sql = f"SELECT * FROM {self._table_name} WHERE {column_name} IN ({','.join(['%s'] * len(values))})"
        return self.__fetch_mysql_data(sql, values)

    def __fetch_mysql_data(self, sql, values=None) -> list:
        """
        Fetch rows
        :param sql: sql query string
        """
        self.__connection.cursor.execute(sql, values)
        results = self.__connection.cursor.fetchall()
        columns = [desc[0] for desc in self.__connection.cursor.description]
        return [{columns[i]: col for i, col in enumerate(result)} for result in results]

    def get(self, **kwargs) -> dict or None:
        """
        Select a record by given filters
        :param kwargs:
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

    def count_and_group_by(self, group_by_column_name, where_in_values) -> int:
        """
        Select count
        :param table_name: count given table name
        :param group_by_column_name: group by column
        :param where_in_values: values for filtering
        """
        self.__check_fields(group_by_column_name)
        sql = f"SELECT COUNT({group_by_column_name}) count, {self._primary_key} FROM {self._table_name} " \
              f"WHERE {group_by_column_name} in ({','.join(['%s'] * len(where_in_values))}) " \
              f"GROUP BY {group_by_column_name}"
        return self.__fetch_mysql_data(sql, where_in_values)

    def update(self, where: dict, **updating) -> dict or None:
        """
        Update records by given filters
        :param where: where statement for filtering query
        :param updating: updating columns and values
        """
        res = self.get(**where)
        if not res:
            raise ResultNotFoundException("Requested entity not found")

        sql = f"UPDATE {self._table_name} SET {self.__get_fetched_string_for_update_statement(**updating)} " \
              f"WHERE {self.__get_fetched_string_for_where_statement(**where)}"
        values = self.__get_converted_keys_and_values(**updating).get('values')
        self.__connection.cursor.execute(sql, values)
        self.__connection.conn.commit()
        if self.__connection.cursor.rowcount == 1:
            return updating
        return None

    def delete(self, **where) -> bool:
        """
        Delete given records
        :param where: where statement for filtering query
        """
        res = self.get(**where)
        if not res:
            raise ResultNotFoundException("Requested entity not found")
        sql = f"DELETE FROM {self._table_name} WHERE {self.__get_fetched_string_for_where_statement(**where)}"
        self.__connection.cursor.execute(sql)
        self.__connection.conn.commit()
        return self.__connection.cursor.rowcount == 1

    @staticmethod
    def __get_converted_keys_and_values(**kwargs) -> dict:
        """
        Simple function to convert keys and values from dict
        :param kwargs: columns with values
        """
        return {'keys': tuple(kwargs.keys()), 'values': tuple(kwargs.values())}

    @staticmethod
    def __get_fetched_string_for_where_statement(**kwargs) -> str:
        """
        Simple function to make the dict compatible with where statement key=value
        :param kwargs: columns with values
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

    @staticmethod
    def _check_enums(value, enum: tuple) -> bool:
        """
        returns true if value exists in enum
        :param value: checking value
        :param enum: enum where the value should be checked
        """
        return value in enum
