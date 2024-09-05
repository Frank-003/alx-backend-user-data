#!/usr/bin/env python3
from flask import jsonify, abort, request
from models.user import User

@app.route('/api/v1/users/<user_id>', methods=['GET'], strict_slashes=False)
def get_user(user_id):
    """Get a user by id."""
    if user_id == 'me':
        if request.current_user is None:
            abort(404)
        return jsonify(request.current_user.to_dict())

    user = User.get(user_id)
    if not user:
        abort(404)
    return jsonify(user.to_dict())

