from exceptions.modelexceptions import ChoiceNotFound
from models.basemodel import BaseModel


class Reaction(BaseModel):
    _table_name = 'reactions'
    _primary_key = 'id'
    _enum_field = 'reaction_type'
    _foreign_key = 'post_id'
    _fields = (_primary_key, _enum_field, _foreign_key)

    REACTION_TYPE_LIKE = 1
    REACTION_TYPE_HEART = 2

    REACTION_CHOICES = (REACTION_TYPE_LIKE, REACTION_TYPE_HEART)

    @property
    def foreign_key(self) -> str:
        return self._foreign_key

    def create(self, **kwargs):
        if kwargs.get(self._enum_field) and kwargs.get(self._enum_field) not in self.REACTION_CHOICES:
            raise ChoiceNotFound(f"'{kwargs.get(self._enum_field)}' is not a valid choice")
        return super().create(**kwargs)
