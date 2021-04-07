rm -rf .girt

clear
# ./girt-init
# # Initialized empty ./girt repository in ../girt
# touch a b
# ./girt-add a b
# ./girt-commit -m "first commit"
# # Committed as commit 0
# rm a
# ./girt-commit -m "second commit"
# # nothing to commit
# ./girt-add a
# ./girt-commit -m "second commit"
# # Committed as commit 1
# ./girt-rm --cached b
# ./girt-commit -m "second commit"
# # Committed as commit 2
# ./girt-rm b
# # ./girt-rm: error: 'b' is not in the ./girt repository
# ./girt-add b
# ./girt-rm b
# # ./girt-rm: error: 'b' has staged changes in the index
# ./girt-commit -m "third commit"
# # Committed as commit 3
# ./girt-rm b
# ./girt-commit -m "fourth commit"
# # Committed as commit 4



################# TEST SUBSET1_18 #################
# ./girt-init
# # Initialized empty girt repository in .girt
# echo 1 >a
# echo 2 >b
# echo 3 >c
# ./girt-add a b c
# ./girt-commit -m "first commit"
# # Committed as commit 0
# echo 4 >>a
# echo 5 >>b
# echo 6 >>c
# echo 7 >d
# echo 8 >e
# ./girt-add b c d
# echo 9 >b
# ./girt-rm a
# # girt-rm: error: 'a' in the repository is different to the working file
# ./girt-rm b
# # girt-rm: error: 'b' in index is different to both to the working file and the repository
# ./girt-rm c
# # girt-rm: error: 'c' has staged changes in the index
# ./girt-rm d
# # girt-rm: error: 'd' has staged changes in the index
# ./girt-rm e
# # girt-rm: error: 'e' is not in the girt repository
# ./girt-rm --cached a
# ./girt-rm --cached b
# # # girt-rm: error: 'b' in index is different to both to the working file and the repository
# ./girt-rm --cached c
# ./girt-rm --cached d
# ./girt-rm --cached e
# # girt-rm: error: 'e' is not in the girt repository
# ./girt-rm --force a
# # girt-rm: error: 'a' is not in the girt repository
# # ./girt-rm --force b
# # ./girt-rm --force c
# # # girt-rm: error: 'c' is not in the girt repository
# # ./girt-rm --force d
# # # girt-rm: error: 'd' is not in the girt repository
# # ./girt-rm --force e
# # # girt-rm: error: 'e' is not in the girt repository

###################################################


# ./girt-init
# # Initialized empty girt repository in .girt
# echo 1 >a
# echo 2 >b
# echo 3 >c
# ./girt-add a b c
# ./girt-commit -m "first commit"
# # Committed as commit 0
# echo 4 >>a
# echo 5 >>b
# echo 6 >>c
# echo 7 >d
# echo 8 >e
# ./girt-add b c d e
# echo 9 >b
# echo 0 >d
# ./girt-rm --cached a c
# # ./girt-rm --force --cached b
# # ./girt-rm --force --cached e




# test subset1_16


./girt-init
# Initialized empty girt repository in .girt
echo 1 >a
echo 2 >b
./girt-add a b
./girt-commit -m "first commit"
# Committed as commit 0
echo 3 >c
echo 4 >d
./girt-add c d
# ./girt-rm --cached  a c
# ./girt-commit -m "second commit"
# # Committed as commit 1
# ./girt-show 0:a
# # 1
# ./girt-show 1:a
# # ./girt-show: error: 'a' not found in commit 1
# ./girt-show :a
# # ./girt-show: error: 'a' not found in index