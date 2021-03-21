./girt-init
# Initialized empty girt repository in .girt
echo line 1 > a
echo hello world >b
./girt-add a b
./girt-commit -m 'first commit'
# Committed as commit 0
echo  line 2 >>a
./girt-add a
./girt-commit -m 'second commit'
# Committed as commit 1
./girt-log
# 1 second commit
# 0 first commit
echo line 3 >>a
./girt-add a
echo line 4 >>a
./girt-show 0:a
# line 1
./girt-show 1:a
# line 1
# line 2
./girt-show :a
# line 1
# line 2
# line 3
cat a
# line 1
# line 2
# line 3
# line 4
./girt-show 0:b
# hello world
./girt-show 1:b
# hello world