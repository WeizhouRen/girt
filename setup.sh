#!/bin/dash

if ! test -d 2041-test
then
    mkdir 2041-test
fi

cd 2041-test

2041 girt-init
echo "first edit" > a 
2041 girt-add a 
2041 girt-commit -m first-commit
