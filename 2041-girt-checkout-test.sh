2041 girt-init
# Initialized empty girt repository in .girt
touch a b c
2041 girt-add a
2041 girt-commit -m commit-A
# Committed as commit 0
2041 girt-branch b1
2041 girt-checkout b1
# Switched to branch 'b1'
touch d e
# 2041 girt-rm a b
# # girt-rm: error: 'b' is not in the girt repository
# 2041 girt-commit -m commit-B
# # nothing to commit
# 2041 girt-checkout master
# # Switched to branch 'master'
# 2041 girt-branch b2
# 2041 girt-checkout b2
# # Switched to branch 'b2'
# touch f g
# 2041 girt-rm b c
# # girt-rm: error: 'b' is not in the girt repository
# 2041 girt-add f g
# 2041 girt-commit -m commit-C
# # Committed as commit 1
# 2041 girt-branch
# # b1
# # b2
# # master
# 2041 girt-checkout b1
# # Switched to branch 'b1'
# 2041 girt-checkout master
# # Switched to branch 'master'
# 2041 girt-checkout b2
# # Switched to branch 'b2'
# 2041 girt-checkout b1
# # Switched to branch 'b1'
# 2041 girt-checkout master
# # Switched to branch 'master'
# 2041 girt-checkout b2
# # Switched to branch 'b2'
# 2041 girt-checkout b1
# # Switched to branch 'b1'