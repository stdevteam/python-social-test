import mysql.connector
from settings.settings import DATABASE_SETTINGS


class DBConnection(object):
    __instance = None

    def __init__(self):
        self.conn = mysql.connector.connect(**DATABASE_SETTINGS)
        self.cursor = self.conn.cursor()

    # Implementing singleton pattern to avoid multiple DB connections
    def __new__(cls, *args, **kwargs):
        if cls.__instance is None:
            cls.__instance = super().__new__(cls)
        return cls.__instance

    def __del__(self):
        self.conn.close()
        self.cursor.close()
