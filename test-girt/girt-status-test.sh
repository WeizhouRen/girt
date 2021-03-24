rm -rf .girt
clear
2041 girt-init
touch a b c d e f g h
2041 girt-add a b c d e f
2041 girt-commit -m 'first commit'
# Committed as commit 0
echo hello >a
echo hello >b
echo hello >c
2041 girt-add a b
echo world >a
rm d
2041 girt-rm e
2041 girt-add g
# 2041 girt-status
# a - file changed, different changes staged for commit
# b - file changed, changes staged for commit
# c - file changed, changes not staged for commit
# d - file deleted
# e - deleted
# f - same as repo
# g - added to index
# girt-add - untracked
# girt-branch - untracked
# girt-checkout - untracked
# girt-commit - untracked
# girt-init - untracked
# girt-log - untracked
# girt-merge - untracked
# girt-rm - untracked
# girt-show - untracked
# girt-status - untracked
# girt.py - untracked
# h - untracked