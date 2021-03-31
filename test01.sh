#!/bin/dash
#
# test for girt-add


rm -rf .girt
clear
echo "|---------- Add before init -------|"
before_init=$(./girt-add a)
if ! test "$before_init" = "./girt-add: error: girt repository directory .girt not found"
then
    echo "FAIL: cannot add files before initialization"
fi

echo "|- Check file staged successfully -|"
./girt-init >/dev/null
echo "girt-add test" > girt-add_a
echo "girt-add test 2" > girt-add_b
./girt-add girt-add_a girt-add_b
# check if file in index
if ! test -f .girt/master/index/girt-add_a
then
    echo "file not staged"
fi
# check if the file has been staged successfully
if ! cmp -s girt-add_a .girt/master/index/girt-add_a
then
    echo "working file and staged file are not same"
fi

echo "|---------- Error Test ------------|"
no_arg=$(./girt-add)
if ! test "$no_arg" = "usage: ./girt-add <filenames>"
then
    echo "FAIL: usage error when no argument"
fi
invalid_filename=$(./girt-add -girt-add_a)
if ! test "$invalid_filename" = "./girt-add: error: invalid filename '-girt-add_a'"
then
    echo "FAIL: error: invalid filename"
fi
file_no_exists=$(./girt-add filenotexists)
if ! test "$file_no_exists" = "./girt-add: error: can not open 'filenotexists'"
then
    echo "FAIL: error: cannot open not existed file"
fi

echo "|---------- Test Finish -----------|"

rm girt-add_a girt-add_b