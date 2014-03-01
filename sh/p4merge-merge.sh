#!/bin/sh
# Use p4merge as mergetool for git in cygwin.
# git config --global mergetool p4merge
# git config --global mergetool.p4merge.cmd "p4merge-merge.sh \"\$LOCAL\" \"\$REMOTE\" \"\$BASE\" \"\$MERGED\""
# git config --global mergetool.p4merge.trustExitCode false
# git mergetool -t diffmerge
# Probably easiest to place in one of you /bin folders
 
# Reference: http://www.tldp.org/LDP/abs/abs-guide.pdf
# Reference: http://p4merge.org/docs/manual/CommandLine.html
 
library=githelperfunctions.sh
 
#[ -f $library ] && . $library
. $library
 
echo Launching p4merge.exe - p4merge-merge.sh:
 
 
set_path_vars "$1" "$2" "$3" "$4"
 
# -- use p4mergeU conflictFile
"$p4mergewinpath" "$mergedwinpath"