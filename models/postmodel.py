from models.basemodel import BaseModel


class Post(BaseModel):
    _table_name = 'posts'
    _primary_key = 'id'
    _fields = (_primary_key, 'title', 'text')

    def get_posts_with_reactions(self):
        pass
