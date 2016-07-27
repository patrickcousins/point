point
=====

Default config files, utils, and .otherstuff


**AndroidStyle.xml** OSX folder: (old)  

    /Users/patrick/Library/Preferences/AndroidStudioBeta


Find and replace on OSX 

    $find . -type f -name '*.txt' -exec sed -i '' s/this/that/ {} +

Delete merged branches

    git branch --merged | grep -v '\*\|master\|develop' | xargs -n 1 git branch -d

Find java path from symlink

    $(readlink -f $(which java))

Send an intent simulating a 'deeplink' from google play

    $adb am broadcast -a com.android.vending.INSTALL_REFERRER -n com.company.packagename/com.company.packagename.BroadcastReceiverClass --es "referrer" "test_referrer=test"
