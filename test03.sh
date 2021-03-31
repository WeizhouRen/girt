#!/bin/dash
#
# test for girt-log and girt-show
# prints a line for every commit made to the repository

rm -rf .girt
clear
./girt-init


echo "|------- girt-log: No commit ---------|"
./girt-log  # no output

echo "|------- girt-log: log content -------|"
echo "test girt log" > test_log
./girt-add test_log
./girt-commit -m first-commit >/dev/null # Committed as commit 0
log=$(cat .girt/master/logs)
if ! test "$log" = "0 first-commit"
then
    echo "FAIL: log content error"
fi
echo "test girt log" > test_log_2
./girt-add test_log_2
./girt-commit -m second-commit >/dev/null # Committed as commit 1

if ! test "$log" = "0 first-commit\n1 second-commit\n"
then
    echo "FAIL: log content error"
fi


echo "|------- girt-log:  ----------------|"