class FieldNotFoundException(Exception):
    """Raise when given model field not found in predefined table fields"""

    def __init__(self, output):
        self.output = output


class ValueNotFoundException(Exception):
    """Raise when required kwargs are not provided"""

    def __init__(self, output):
        self.output = output


class ResultNotFoundException(Exception):
    """Raise when there is no expected result from db"""

    def __init__(self, output):
        self.output = output
