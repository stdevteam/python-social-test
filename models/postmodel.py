from models.basemodel import BaseModel
from models.reactionmodel import Reaction


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
