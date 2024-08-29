#!/usr/bin/env python3

import bcrypt

def hash_password(password: str) -> bytes:
    """Hash a password using bcrypt and return the salted, hashed password as a byte string."""
    salt = bcrypt.gensalt()  # Generate a salt
    hashed_password = bcrypt.hashpw(password.encode('utf-8'), salt)  # Hash the password with the salt
    return hashed_password

def is_valid(hashed_password: bytes, password: str) -> bool:
    """Validate that the provided password matches the hashed password."""
    return bcrypt.checkpw(password.encode('utf-8'), hashed_password)
