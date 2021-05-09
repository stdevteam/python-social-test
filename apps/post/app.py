from flask import Blueprint, request, jsonify

from apps.post.models import Post

post_app = Blueprint('post_app', __name__)


@post_app.route('/posts/', methods=["GET", "POST"], defaults={'id': None})
@post_app.route('/posts/<int:id>/', methods=["DELETE", "PUT"])
def post(id):
    if request.method == "GET":
        # TODO Add pagination
        return jsonify(Post().get_posts_with_reactions_count())
    elif request.method == "POST":
        return jsonify(Post().create(**request.form))
    elif request.method == "DELETE":
        try:
            Post().delete(id=id)
            return jsonify({})
        except Exception as e:
            return jsonify({'error': e})
    elif request.method == "PUT":
        try:
            return jsonify(Post().update({'id': id}, **request.form))
        except Exception as e:
            return jsonify({'error': e})

