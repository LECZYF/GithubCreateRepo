function gcreate
	mkdir $argv[2]
    cd $argv[2]
    git init
    curl -u $argv[1] https://api.github.com/user/repos -d "{\"name\": \"$argv[2]\", \"private\": \"$argv[3]\"}"
    git remote add origin git@github.com:$argv[1]/$argv[2].git
    echo $argv[2] "by" $argv[1] >> readme.md
    git add readme.md
    git commit -m "initial commit"
    git push --set-upstream origin master
    git checkout -b devel
    git push --set-upstream origin devel
end