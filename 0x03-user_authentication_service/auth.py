#!/usr/bin/env python3

import bcrypt

class PasswordManager:
    def __init__(self):
        self.salt = bcrypt.gensalt()

    def _hash_password(self, password: str) -> bytes:
        """
        Hashes a password string using bcrypt and returns the hash in bytes.

        Args:
            password (str): The password string to hash.

        Returns:
            bytes: The hashed password in bytes.
        """
        password_bytes = password.encode('utf-8')  # Convert the password to bytes
        hashed_password = bcrypt.hashpw(password_bytes, self.salt)
        return hashed_password

# Example usage
if __name__ == "__main__":
    manager = PasswordManager()
    password = "my_secure_password"
    hashed = manager._hash_password(password)
    print(hashed)

