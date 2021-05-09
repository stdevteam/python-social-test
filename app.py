from flask import Flask

from settings import settings
from apps.post.app import post_app


app = Flask(__name__)
app.register_blueprint(post_app)

if __name__ == "__main__":
    app.run(debug=settings.DEBUG)
