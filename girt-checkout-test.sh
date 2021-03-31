


# subset2_24
rm -rf .girt
clear
# ./girt-init
# # Initialized empty girt repository in .girt
# touch a
# ./girt-add a
# ./girt-commit -m commit-0
# # Committed as commit 0
# ./girt-branch b1
# ./girt-checkout b1
# # Switched to branch 'b1'
# touch b
# ./girt-add b
# ./girt-commit -m commit-1
# # Committed as commit 1
# ./girt-checkout master
# # Switched to branch 'master'
# ./girt-branch b2
# ./girt-checkout b2
# # Switched to branch 'b2'
# touch c
# ./girt-add c
# ./girt-commit -m commit-2
# # Committed as commit 2
# ./girt-branch
# b1
# b2
# master
# ./girt-checkout b1
# # Switched to branch 'b1'
# ./girt-checkout master
# # Switched to branch 'master'
# ./girt-checkout non-existent-branch
# # ./girt-checkout: error: unknown branch 'non-existent-branch'



# subset_2_26

./girt-init
# Initialized empty girt repository in .girt
echo hello >a
./girt-add a
./girt-commit -m commit-A
# Committed as commit 0
./girt-branch b1
echo world >>a
./girt-checkout b1
# Switched to branch 'b1'
./girt-status
# a - file changed, changes not staged for commit
./girt-checkout master
# Switched to branch 'master'
./girt-add a
./girt-status
# a - file changed, changes staged for commit
./girt-checkout b1
# Switched to branch 'b1'
./girt-status
# a - file changed, changes staged for commit
./girt-checkout master
# Switched to branch 'master'
./girt-commit -a -m commit-B
# Committed as commit 1
./girt-checkout b1
# Switched to branch 'b1'
./girt-status
# a - same as repo
./girt-checkout master
# Switched to branch 'master'
./girt-status
# a - same as repo
