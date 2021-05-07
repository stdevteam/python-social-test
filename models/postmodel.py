from models.basemodel import BaseModel


class Post(BaseModel):
    _table_name = 'posts'
    _fields = ('id', 'title', 'text')
