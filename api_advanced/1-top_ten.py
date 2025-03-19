#!/usr/bin/python3
"""Fetches and prints top 10 hot posts in sub"""

import requests

def top_ten(subreddit):
    """Prints the titles of the top 10 hot posts"""
    url = "https://www.reddit.com/r/{}/hot.json?limit=10".format(subreddit)
    headers = {"User-Agent": "Mozilla/5.0"}

    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code == 200:
        posts = response.json().get("data", {}).get("children", [])
        for post in posts:
            print(post["data"].get("title"))
    else:
        print("None")
