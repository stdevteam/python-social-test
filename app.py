from models.postmodel import Post
from settings import settings
from flask import Flask, request, jsonify


app = Flask(__name__)


@app.route('/posts/', methods=["GET", "POST"])
def post():
    if request.method == "GET":
        return jsonify(Post().filter())
    else:
        return jsonify(Post().create(**request.form))


if __name__ == "__main__":
    app.run(debug=settings.DEBUG)
