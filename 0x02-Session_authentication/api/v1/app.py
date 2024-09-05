#!/usr/bin/env python3
@app.before_request
def before_request():
    """Before each request, checks authentication."""
    if auth is None:
        return
    request.current_user = auth.current_user(request)

