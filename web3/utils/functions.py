import json
import os


def read_json(path: str) -> dict:
    with open(path) as file:
        return json.load(file)
