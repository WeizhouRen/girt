rm -rf .girt
clear
# usage: girt-branch [-d] <branch>
./girt-init
# girt-branch: error: this command can not be run until after the first commit
touch a
./girt-add a
./girt-commit -m 'a'

./girt-branch
# master
./girt-branch testbranch

./girt-branch
# master
# testbranch

./girt-branch -d testbranch
# Deleted branch 'test'

./girt-branch -d ccc
# girt-branch: error: branch 'aaa' doesn't exist

./girt-branch -d master
# girt-branch: error: can not delete branch 'master'

./girt-branch master
# girt-branch: error: branch 'master' already exists




