rm -rf test-2041-girt
mkdir test-2041-girt
cd test-2041-girt 

clear

# # Initialized empty girt repository in .girt
# seq 1 7 >7.txt
# 2041 girt-add 7.txt
# 2041 girt-commit -m commit-1
# # Committed as commit 0
# 2041 girt-branch b1
# 2041 girt-checkout b1
# # Switched to branch 'b1'
# perl -pi -e 's/2/42/' 7.txt
# cat 7.txt
# # 1
# # 42
# # 3
# # 4
# # 5
# # 6
# # 7
# 2041 girt-commit -a -m commit-2
# # Committed as commit 1
# 2041 girt-checkout master
# # Switched to branch 'master'
# cat 7.txt
# # 1
# # 2
# # 3
# # 4
# # 5
# # 6
# # 7
# perl -pi -e 's/5/24/' 7.txt
# cat 7.txt
# # 1
# # 2
# # 3
# # 4
# # 24
# # 6
# # 7
# 2041 girt-commit -a -m commit-3
# # Committed as commit 2
# 2041 girt-merge b1 -m merge-message
# # girt-merge: error: can not merge
# cat 7.txt







# echo "|------------------- start --------------------|"

# echo "hello" > a
# 2041 girt-add a
# 2041 girt-commit -m commit-1
# # echo "|---------------- merge self ------------------|"
# # 2041 girt-merge master -m merge-self
# echo "|----------------------------------------------|"
# 2041 girt-branch b1
# 2041 girt-checkout b1
# echo "world" >> a

# # echo "|---- merge with changes but not staged -------|"
# # 2041 girt-checkout master
# # 2041 girt-merge b1 -m merge-b1-to-master

# # echo "|----------------------------------------------|"

# # echo "|---- changes staged but not commit yet -------|"
# # 2041 girt-checkout b1
# # 2041 girt-add a 
# # 2041 girt-checkout master
# # 2041 girt-merge b1 -m merge-b1-to-master

# echo "|---- changes commit in new branch b1 ---------|"
# # 2041 girt-checkout b1
# 2041 girt-add a
# 2041 girt-commit -m commit-a-in-b1
# 2041 girt-checkout master
# 2041 girt-merge b1 -m merge-b1-to-master
# # OUTPUT: Fast-forward: no commit created


# echo "|---- new commit in master and merge b1 -------|"
# echo "edit in master" >> a
# 2041 girt-add a 
# 2041 girt-commit -m commit-a-in-master
# 2041 girt-merge b1 -m merge-b1-to-master

# echo "|---- new commit in master and merge to b1 -------|"
# 2041 girt-checkout b1
# 2041 girt-merge master -m merge-master-to-b1

# ######### subset_2_31 ###########
rm -rf .girt
2041 girt-init
# Initialized empty girt repository in .girt
seq -f "line %.0f" 1 7 >a
seq -f "line %.0f" 1 7 >b
seq -f "line %.0f" 1 7 >c
seq -f "line %.0f" 1 7 >d
2041 girt-add a b c d
2041 girt-commit -m commit-0
# Committed as commit 0
2041 girt-branch b1
2041 girt-checkout b1
# Switched to branch 'b1'
seq -f "line %.0f" 0 7 >a
seq -f "line %.0f" 1 8 >b
seq -f "line %.0f" 1 7 >e
2041 girt-add e
2041 girt-commit -a -m commit-1
# Committed as commit 1
2041 girt-checkout master
# Switched to branch 'master'
sed -i 4d c
seq -f "line %.0f" 0 8 >d
seq -f "line %.0f" 1 7 >f
2041 girt-add f
2041 girt-commit -a -m commit-2
# Committed as commit 2
2041 girt-merge b1 -m merge1
# Committed as commit 3
2041 girt-log
# 3 merge1
# 2 commit-2
# 1 commit-1
# 0 commit-0
2041 girt-status
# a - same as repo
# b - same as repo
# c - same as repo
# d - same as repo
# e - same as repo
# f - same as repo