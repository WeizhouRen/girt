rm -rf .girt
rm a b c d e f g h
clear
# ./girtt-init
# touch a b c d e f g h
# ./girtt-add a b c d e f
# ./girtt-commit -m 'first commit'
# # Committed as commit 0
# echo hello >a
# echo hello >b
# echo hello >c
# ./girtt-add a b
# echo world >a
# rm d
# ./girtt-rm e
# ./girtt-add g
# ./girtt-status

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



######## Subset1_23 ###########
./girt-init
# Initialized empty .girt repository in .girt
echo hi >a
./girt-add a
./girt-commit -m message
# Committed as commit 0
echo hello >b
echo hola >c
./girt-add b c
./girt-status
# a - same as repo
# b - added to index
# c - added to index
# echo there >>b
# rm c
# ./girt-status
# a - same as repo
# b - added to index, file changed
# c - added to index, file deleted