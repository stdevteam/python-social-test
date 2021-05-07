class FieldNotFountException(Exception):
    """Raise when given model field not found in predefined table fields"""

    def __init__(self, output):
        self.output = output
