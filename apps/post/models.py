from exceptions.modelexceptions import ChoiceNotFound
from database.basemodel import BaseModel


class Post(BaseModel):
    _table_name = 'posts'
    _primary_key = 'id'
    _fields = (_primary_key, 'title', 'text')

    def get_posts_with_reactions_count(self, **kwargs):
        posts = self.filter(**kwargs)
        post_ids = [post[self._primary_key] for post in posts]
        reaction_instance = Reaction()
        reactions = reaction_instance.count_and_group_by(reaction_instance.foreign_key, post_ids)
        return self.__connect_both(posts, reactions, reaction_instance)

    def __connect_both(self, posts, reactions, reaction_instance):
        for i, post in enumerate(posts):
            count = 0
            for index, reaction in enumerate(reactions):
                if reaction[reaction_instance.foreign_key] == post[self._primary_key]:
                    count = reaction['count']
                    reactions.pop(index)
                    break
            posts[i]['count'] = count
        return posts


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
        if kwargs.get(self._enum_field) and int(kwargs.get(self._enum_field)) not in self.REACTION_CHOICES:
            raise ChoiceNotFound(f"'{kwargs.get(self._enum_field)}' is not a valid choice")
        return super().create(**kwargs)
