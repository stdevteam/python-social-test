from flask import Blueprint, request, jsonify

from apps.post.models import Post, Reaction, Comment

post_app = Blueprint('post_app', __name__)


@post_app.route('/posts/', methods=["GET", "POST"], defaults={'id': None})
@post_app.route('/posts/<int:id>/', methods=["DELETE", "PUT", "GET"])
def post(id):
    if request.method == "GET":
        # TODO Add pagination
        if id:
            return jsonify(Post().get(id=id))
        else:
            return jsonify(Post().get_posts_with_reactions_count())
    elif request.method == "POST":
        return jsonify(Post().create(**request.form))
    elif request.method == "DELETE":
        try:
            Post().delete(id=id)
            return jsonify({})
        except Exception as e:
            return jsonify({'error': str(e)}), 422
    elif request.method == "PUT":
        try:
            return jsonify(Post().update({'id': id}, **request.form))
        except Exception as e:
            return jsonify({'error': str(e)}), 422


@post_app.route('/react/', methods=["POST"])
def react():
    try:
        return jsonify(Reaction().create(**request.form))
    except Exception as e:
        return jsonify({'error': str(e)}), 422


@post_app.route('/comment/', methods=["POST"], defaults={'post_id': None})
@post_app.route('/comment/<int:post_id>/', methods=["GET"])
def comment(post_id):
    if request.method == "POST":
        try:
            return jsonify(Comment().create(**request.form))
        except Exception as e:
            return jsonify({'error': str(e)}), 422
    elif request.method == "GET":
        return jsonify(Comment().filter(post_id=post_id))