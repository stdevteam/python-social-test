from models.postmodel import Post
from settings import settings
from flask import Flask, request, jsonify


app = Flask(__name__)


@app.route('/posts/', methods=["GET", "POST"])
def post():
    if request.method == "GET":
        # TODO Add pagination
        return jsonify(Post().count_and_group_by())
    else:
        return jsonify(Post().create(**request.form))


if __name__ == "__main__":
    app.run(debug=settings.DEBUG)
