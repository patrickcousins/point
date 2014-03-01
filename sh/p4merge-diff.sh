#!/bin/sh
# Use p4merge as mergetool for git in cygwin.
# git config --global mergetool p4mergeDiff
# git config --global difftool.p4mergeDiff.cmd "p4merge-diff.sh \"\$LOCAL\" \"\$REMOTE\" \"\$BASE\""
# git config --global mergetool.p4mergeDiff.trustExitCode false
# git difftool -t p4merge branch1..branch2
# Probably easiest to place in one of you /bin folders
 
# Reference: http://www.tldp.org/LDP/abs/abs-guide.pdf
# Reference: http://p4merge.org/docs/manual/CommandLine.html
 
 
library=githelperfunctions.sh
 
#[ -f $library ] && . $library
. $library
 
echo Launching p4merge.exe - p4merge-diff.sh:
 
set_path_vars "$1" "$2" "$3" "$4"
 
#"$p4mergewinpath" /dl "LOCAL.$caption" /dr "TO_VERSION.$caption" "$localwinpath" "$remotewinpath"
 
"$p4mergewinpath" "$localwinpath" "$remotewinpath"