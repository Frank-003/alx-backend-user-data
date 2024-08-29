#!/usr/bin/env python3

import re

def filter_datum(fields, redaction, message, separator):
    pattern = '|'.join(f'(?<={field}{separator})([^;{separator}]*)' for field in fields)
    return re.sub(pattern, redaction, message)
import logging


class RedactingFormatter(logging.Formatter):
    """ Redacting Formatter class
        """

    REDACTION = "***"
    FORMAT = "[HOLBERTON] %(name)s %(levelname)s %(asctime)-15s: %(message)s"
    SEPARATOR = ";"

    def __init__(self):
        super(RedactingFormatter, self).__init__(self.FORMAT)

    def format(self, record: logging.LogRecord) -> str:
        NotImplementedError
