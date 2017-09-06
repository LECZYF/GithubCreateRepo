GithubCreateRepo by LECZYF

Simple fish script for initializing empty github repository from command line. 

Usage:
'''
gcreate <username> <repo name> <isPrivate>

gcreate LECZYF GithubCreateRepo false
'''

What it does (hello cpt. Obvious):
1. Creates empty dir with repo name, cds to it and initiates git repo.
2. Creates repo in github
3. Creates devel branch
4. Sets upstreams for master and devel
5. Pushes initial commit with readme "<repo name> by <username>

Based on GitHub API v3.

Cheers.