rm -rf .girt

clear
./girt-init
# Initialized empty ./girt repository in ../girt
touch a b
./girt-add a b
./girt-commit -m "first commit"
# Committed as commit 0
rm a
./girt-commit -m "second commit"
# nothing to commit
./girt-add a
./girt-commit -m "second commit"
# Committed as commit 1
./girt-rm --cached b
./girt-commit -m "second commit"
# Committed as commit 2
./girt-rm b
# ./girt-rm: error: 'b' is not in the ./girt repository
./girt-add b
./girt-rm b
# ./girt-rm: error: 'b' has staged changes in the index
./girt-commit -m "third commit"
# Committed as commit 3
./girt-rm b
./girt-commit -m "fourth commit"
# Committed as commit 4
