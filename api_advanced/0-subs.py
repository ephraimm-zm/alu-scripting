#!/usr/bin/python3
"""0-subs.py"""

import requests


def number_of_subscribers(subreddit):
    """Reddit subscribers"""
    url = "https://www.reddit.com/r/{subreddit}/about.json".format(subreddit)
    headers = {"User-Agent": "Mozilla/5.0"}

    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code == 200:
        return response.json().get("data", {}).get("subscribers", 0)
    return 0
