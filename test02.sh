#!/bin/dash
#
# test for girt-commit

rm -rf .girt
rm test_commit 
clear
echo "line 1" > test_commit_a

echo "|---------- Commit before init -----------|"
./girt-commit -m 'test'

echo "|---------- Commit before add ------------|"
./girt-init
./girt-commit -m 'test commit' 

echo "|---------- Commit after add -------------|"
./girt-add test_commit_a 
./girt-commit -m 'test commit' 

echo "|---------- Commit without changes -------|"
./girt-commit -m 'test commit' 

echo "|---------- Add new commit with -a -------|"
echo "line 2" >> test_commit_a                   # update test_commit_a
echo "line 1" > test_commit_b  
./girt-commit -a -m 'test commit'                # update test_commit_a in index with content of test_commit_a in root 
# compare working file and staged file
if ! cmp -s test_commit_a .girt/master/index/test_commit_a
then
    echo "FAIL: Wroking file and commit file are not same"
else
    echo "PASS: File a are same"
fi

if test -f .girt/master/index/test_commit_b || test -f .girt/master/repository/test_commit_b
then
    echo "FAIL: b shouldn't be staged or committed"
else
    echo "PASS: b was not staged and committed"
fi

echo "|---------- Commit in other branch -------|"


echo "|---------- Usage Errors -----------------|"              
# give "usage: girt-commit [-a] -m commit-message"
./girt-commit -m 'test commit' -a    # -a should be first argument
./girt-commit -a -m                  # commit message should not be empty
./girt-commit -a 'test commit' -m    # -m should be second argument if -a exists
./girt-commit -a -m -d               # commit message should not be start with '-'
./girt-commit -m -d                  # should not contain other options
./girt-commit -a -d -m               # should not contain other options

rm test_commit_a
rm test_commit_b

echo "|---------- Test Finish -----------------|"