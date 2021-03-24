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



################# TEST SUBSET1_17 #################
# 2041 girt-init
# # Initialized empty girt repository in .girt
# 2041 touch a b
# 2041 girt-add a b
# 2041 girt-commit -m "first commit"
# # Committed as commit 0
# 2041 rm a
# 2041 girt-commit -m "second commit"
# # nothing to commit
# 2041 girt-add a
# 2041 girt-commit -m "second commit"
# # Committed as commit 1
# 2041 girt-rm --cached b
# 2041 girt-commit -m "second commit"
# # Committed as commit 2
# 2041 girt-rm b
# # girt-rm: error: 'b' is not in the girt repository
# 2041 girt-add b
# 2041 girt-rm b
# # girt-rm: error: 'b' has staged changes in the index
# 2041 girt-commit -m "third commit"
# # Committed as commit 3
# 2041 girt-rm b
# 2041 girt-commit -m "fourth commit"
# # Committed as commit 4

###################################################



################# TEST SUBSET1_18 #################
2041 girt-init
# Initialized empty girt repository in .girt
echo 1 >a
echo 2 >b
echo 3 >c
2041 girt-add a b c
2041 girt-commit -m "first commit"
# Committed as commit 0
echo 4 >>a
echo 5 >>b
echo 6 >>c
echo 7 >d
echo 8 >e
2041 girt-add b c d
echo 9 >b
2041 girt-rm a
# girt-rm: error: 'a' in the repository is different to the working file
2041 girt-rm b
# girt-rm: error: 'b' in index is different to both to the working file and the repository
2041 girt-rm c
# girt-rm: error: 'c' has staged changes in the index
2041 girt-rm d
# girt-rm: error: 'd' has staged changes in the index
2041 girt-rm e
# girt-rm: error: 'e' is not in the girt repository
2041 girt-rm --cached a
2041 girt-rm --cached b
# girt-rm: error: 'b' in index is different to both to the working file and the repository
2041 girt-rm --cached c
2041 girt-rm --cached d
2041 girt-rm --cached e
# girt-rm: error: 'e' is not in the girt repository
2041 girt-rm --force a
# girt-rm: error: 'a' is not in the girt repository
2041 girt-rm --force b
2041 girt-rm --force c
# girt-rm: error: 'c' is not in the girt repository
2041 girt-rm --force d
# girt-rm: error: 'd' is not in the girt repository
2041 girt-rm --force e
# girt-rm: error: 'e' is not in the girt repository