# rm -rf .girt
# 2041 girt-init
# echo 1 >a
# echo 2 >b
# 2041 girt-add a b
# 2041 girt-commit -m "first commit"
# echo 3 >c
# echo 4 >d
# 2041 girt-add c d
# 2041 girt-rm --cached a c
# 2041 girt-commit -m "second commit"
# 2041 girt-show 0:a
# 2041 girt-show 1:a
# 2041 girt-show :a
clear
rm -rf .girt
# TEST SUBSET1_17
2041 girt-init
# Initialized empty girt repository in .girt
2041 touch a b
2041 girt-add a b
2041 girt-commit -m "first commit"
# Committed as commit 0
2041 rm a
2041 girt-commit -m "second commit"
# nothing to commit
2041 girt-add a
2041 girt-commit -m "second commit"
# Committed as commit 1
2041 girt-rm --cached b
2041 girt-commit -m "second commit"
# Committed as commit 2
2041 girt-rm b
# girt-rm: error: 'b' is not in the girt repository
2041 girt-add b
2041 girt-rm b
# girt-rm: error: 'b' has staged changes in the index
2041 girt-commit -m "third commit"
# Committed as commit 3
2041 girt-rm b
2041 girt-commit -m "fourth commit"
# Committed as commit 4