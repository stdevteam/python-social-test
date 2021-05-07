import os
from pathlib import Path
from dotenv import load_dotenv

ROOT_DIR = Path(__file__).parent.parent  # Project root folder

path_to_env_file = os.path.join(ROOT_DIR, '.env')

load_dotenv(path_to_env_file)


def get_env_var(var_name):
    try:
        return os.environ.get(var_name)
    except KeyError:
        error_msg = "Set the %s environment variable" % var_name
        raise Exception(error_msg)


DEBUG = bool(get_env_var('DEBUG'))

DATABASE_SETTINGS = {
    'host': get_env_var("DB_HOST"),
    'user': get_env_var("DB_USER"),
    'password': get_env_var("DB_PASSWORD"),
    'database': get_env_var("DB_NAME")
}
