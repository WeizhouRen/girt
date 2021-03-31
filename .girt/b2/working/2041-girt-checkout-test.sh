


# subset2_24
rm -rf .girt
clear
2041 girt-init
# Initialized empty girt repository in .girt
touch a
2041 girt-add a
2041 girt-commit -m commit-0
# Committed as commit 0
2041 girt-branch b1
2041 girt-checkout b1
# Switched to branch 'b1'
touch b
2041 girt-add b
2041 girt-commit -m commit-1
# Committed as commit 1
2041 girt-checkout master
# Switched to branch 'master'
2041 girt-branch b2
2041 girt-checkout b2
# Switched to branch 'b2'
touch c
2041 girt-add c
2041 girt-commit -m commit-2
# Committed as commit 2
2041 girt-branch
# b1
# b2
# master
2041 girt-checkout b1
Switched to branch 'b1'
2041 girt-checkout master
# Switched to branch 'master'
2041 girt-checkout non-existent-branch
# 2041 girt-checkout: error: unknown branch 'non-existent-branch'