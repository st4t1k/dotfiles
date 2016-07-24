#!/bin/env python
import feedparser
import subprocess
import sys

feed = feedparser.parse('https://news.ycombinator.com/rss')

print('------------------------------------------------------')
index = 1
for post in feed.entries:
    print(index, post.title)
    index += 1
print('------------------------------------------------------')

link = input("Open: ")
subprocess.call(('xdg-open', feed.entries[int(link)-1].link))
