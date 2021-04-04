
rm -rf test-girt
mkdir test-girt
cd test-girt

######### subset_2_24 ###########
# ../girt-init
# # Initialized empty girt repository in .girt
# touch a
# ../girt-add a
# ../girt-commit -m commit-0
# # Committed as commit 0
# ../girt-branch b1
# ../girt-checkout b1
# # Switched to branch 'b1'
# touch b
# ../girt-add b
# ../girt-commit -m commit-1
# # Committed as commit 1
# ../girt-checkout master
# # Switched to branch 'master'
# ../girt-branch b2
# ../girt-checkout b2
# # Switched to branch 'b2'
# touch c
# ../girt-add c
# ../girt-commit -m commit-2
# # Committed as commit 2
# ../girt-branch
# # b1
# # b2
# # master
# ../girt-checkout b1
# # Switched to branch 'b1'
# ../girt-checkout master
# # Switched to branch 'master'
# ../girt-checkout non-existent-branch
# # ../girt-checkout: error: unknown branch 'non-existent-branch'


######### subset_2_26 ###########
../girt-init
# Initialized empty girt repository in .girt
echo hello >a
../girt-add a
../girt-commit -m commit-A
# Committed as commit 0
../girt-branch b1
echo world >>a
../girt-checkout b1
# Switched to branch 'b1'
../girt-status
# a - file changed, changes not staged for commit
../girt-checkout master
# Switched to branch 'master'
../girt-add a
../girt-status
# a - file changed, changes staged for commit
../girt-checkout b1
# Switched to branch 'b1'
../girt-status
# a - file changed, changes staged for commit
../girt-checkout master
# Switched to branch 'master'
../girt-commit -a -m commit-B
# Committed as commit 1
../girt-checkout b1
# # Switched to branch 'b1'
# ../girt-status
# # a - same as repo
# ../girt-checkout master
# # Switched to branch 'master'
# ../girt-status
# # a - same as repo

######### subset_2_28 ###########
# rm -rf .girt
# ./girt-init
# # Initialized empty girt repository in .girt
# echo hello >a
# ./girt-add a
# ./girt-commit -m commit-A
# # Committed as commit 0
# ./girt-branch branch1
# ./girt-checkout branch1
# # Switched to branch 'branch1'
# echo world >b
# ./girt-add b
# ./girt-commit -a -m commit-B
# # Committed as commit 1
# ./girt-checkout master
# # Switched to branch 'master'

# ./girt-branch -d branch1
# # girt-branch: error: branch 'branch1' has unmerged changes
# ./girt-merge branch1 -m merge-message
# # Fast-forward: no commit created
# ./girt-branch -d branch1
# # Deleted branch 'branch1'
# ./girt-branch
# # master

######### subset_2_29 ###########
# rm -rf .girt
# ../girt-init
# # Initialized empty girt repository in .girt
# echo hello >a
# ../girt-add a
# ../girt-commit -m commit-A
# # Committed as commit 0
# ../girt-branch branchA
# echo world >b
# ../girt-add b
# ../girt-commit -m commit-B
# # Committed as commit 1
# ../girt-checkout branchA
# # Switched to branch 'branchA'
# echo new contents >b
# ../girt-checkout master
# # girt-checkout: error: Your changes to the following files would be overwritten by checkout:
# # b
# ../girt-add b
# ../girt-commit -m commit-C
# # Committed as commit 2
# ../girt-checkout master
# # Switched to branch 'master'


# ######### subset_2_30 ###########
# ../girt-init
# # Initialized empty girt repository in .girt
# seq 1 7 >7.txt
# ../girt-add 7.txt
# ../girt-commit -m commit-0
# # Committed as commit 0
# ../girt-branch b1
# ../girt-checkout b1
# # Switched to branch 'b1'
# perl -pi -e s/2/42/ 7.txt
# ../girt-commit -a -m commit-1
# # Committed as commit 1
# ../girt-checkout master
# # Switched to branch 'master'
# ../girt-merge b1 -m merge-message
# # Fast-forward: no commit created
# ../girt-log
# # 1 commit-1
# # 0 commit-0
# ../girt-status
# # 7.txt - same as repo


# ######### subset_2_31 ###########
# ../girt-init
# # Initialized empty girt repository in .girt
# seq -f "line %.0f" 1 7 >a
# seq -f "line %.0f" 1 7 >b
# seq -f "line %.0f" 1 7 >c
# seq -f "line %.0f" 1 7 >d
# ../girt-add a b c d
# ../girt-commit -m commit-0
# # Committed as commit 0
# ../girt-branch b1
# ../girt-checkout b1
# # Switched to branch 'b1'
# seq -f "line %.0f" 0 7 >a
# seq -f "line %.0f" 1 8 >b
# seq -f "line %.0f" 1 7 >e
# ../girt-add e
# ../girt-commit -a -m commit-1
# # Committed as commit 1
# ../girt-checkout master
# # Switched to branch 'master'
# sed -i 4d c
# seq -f "line %.0f" 0 8 >d
# seq -f "line %.0f" 1 7 >f
# ../girt-add f
# ../girt-commit -a -m commit-2
# # Committed as commit 2
# ../girt-merge b1 -m merge1
# # Committed as commit 3
# ../girt-log
# # 3 merge1
# # 2 commit-2
# # 1 commit-1
# # 0 commit-0
# ../girt-status
# # a - same as repo
# # b - same as repo
# # c - same as repo
# # d - same as repo
# # e - same as repo
# # f - same as repo


# ######### subset_2_32 ###########
# ./girt-init
# # Initialized empty girt repository in .girt
# seq 1 7 >7.txt
# ./girt-add 7.txt
# ./girt-commit -m commit-0
# # Committed as commit 0
# ./girt-branch b1
# ./girt-checkout b1
# # Switched to branch 'b1'
# perl -pi -e s/2/42/ 7.txt
# ./girt-commit -a -m commit-1
# # Committed as commit 1
# ./girt-checkout master
# # Switched to branch 'master'
# perl -pi -e s/5/24/ 7.txt
# ./girt-commit -a -m commit-2
# # Committed as commit 2
# ./girt-merge b1 -m merge-message
# # girt-merge: error: can not merge
# ./girt-log
# # 2 commit-2
# # 0 commit-0
# ./girt-status
# # 7.txt - same as repo



# ######### subset_2_33 ###########

# ./girt-init
# # Initialized empty girt repository in .girt
# seq 1 7 >7.txt
# ./girt-add 7.txt
# ./girt-commit -m commit-0
# # Committed as commit 0
# ./girt-branch b1
# ./girt-checkout b1
# # Switched to branch 'b1'
# perl -pi -e s/2/42/ 7.txt
# ./girt-commit -a -m commit-1
# # Committed as commit 1
# ./girt-checkout master
# # Switched to branch 'master'
# perl -pi -e s/5/24/ 7.txt
# ./girt-commit -a -m commit-2
# # Committed as commit 2
# ./girt-merge b1
# # girt-merge: error: empty commit message
# ./girt-merge non-existent-branch -m message
# # girt-merge: error: unknown branch 'non-existent-branch'
# ./girt-merge b1 -m message
# # girt-merge: error: can not merge



# ######### subset_2_34 ###########
# ./girt-init
# # Initialized empty girt repository in .girt
# echo 0 >level0
# ./girt-add level0
# ./girt-commit -m root
# # Committed as commit 0
# ./girt-branch b0
# ./girt-branch b1
# ./girt-checkout b0
# # Switched to branch 'b0'
# echo 0 >level1
# ./girt-add level1
# ./girt-commit -m 0
# # Committed as commit 1
# ./girt-checkout b1
# # Switched to branch 'b1'
# echo 1 >level1
# ./girt-add level1
# ./girt-commit -m 1
# # Committed as commit 2
# ./girt-checkout b0
# # Switched to branch 'b0'
# ./girt-branch b00
# ./girt-branch b01
# ./girt-checkout b1
# # Switched to branch 'b1'
# ./girt-branch b10
# ./girt-branch b11
# ./girt-checkout b00
# # Switched to branch 'b00'
# echo 00 >level2
# ./girt-add level2
# ./girt-commit -m 00
# # Committed as commit 3
# ./girt-checkout b01
# # Switched to branch 'b01'
# echo 01 >level2
# ./girt-add level2
# ./girt-commit -m 01
# # Committed as commit 4
# ./girt-checkout b10
# # Switched to branch 'b10'
# echo 10 >level2
# ./girt-add level2
# ./girt-commit -m 10
# # Committed as commit 5
# ./girt-checkout b11
# # Switched to branch 'b11'
# echo 11 >level2
# ./girt-add level2
# ./girt-commit -m 11
# # Committed as commit 6
# ./girt-checkout master
# # Switched to branch 'master'
# ./girt-log
# # 0 root
# ./girt-checkout b1
# # Switched to branch 'b1'
# ./girt-log
# # 2 1
# # 0 root
# ./girt-checkout b01
# # Switched to branch 'b01'
# ./girt-log
# # 4 01
# # 1 0
# # 0 root
# ./girt-checkout b11
# # Switched to branch 'b11'
# ./girt-log
# # 6 11
# # 2 1
# # 0 root
# ./girt-checkout master
# # Switched to branch 'master'
# ./girt-merge b0 -m merge0
# # Fast-forward: no commit created
# ./girt-merge b00 -m merge00
# # Fast-forward: no commit created
# ./girt-log
# # 3 00
# # 1 0
# 0 root
