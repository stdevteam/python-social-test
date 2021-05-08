class FieldNotFoundException(Exception):
    """Raise when given model field not found in predefined table fields"""


class ValueNotFoundException(Exception):
    """Raise when required kwargs are not provided"""


class ResultNotFoundException(Exception):
    """Raise when there is no expected result from db"""


class ArgumentException(Exception):
    """Raise when required arguments are not passed"""


class ChoiceNotFound(Exception):
    """Raise when given choice not found"""
