point
=====

Default config files, utils, and .otherstuff


**AndroidStyle.xml** OSX folder: (old)  

    /Users/patrick/Library/Preferences/AndroidStudioBeta


Find and replace on OSX 

    $find . -type f -name '*.txt' -exec sed -i '' s/this/that/ {} +

Delete merged branches

    git branch --merged | grep -v '\*\|master\|develop' | xargs -n 1 git branch -d
