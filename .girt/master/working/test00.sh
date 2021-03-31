#!/bin/dash
#
# test for girt-init
rm -rf .girt
clear
echo "|---------- Initialization -----------|"

output=$(./girt-init)
if test "$output" != "Initialized empty girt repository in .girt"
then
    echo "did not initialize an emprty girt repository"
    exit 1
fi
# cehck files and directory exists
if ! test -d .girt
then
    echo ".girt was not initialized"
    exit 1
elif ! test -d .girt/master
then
    echo "master branch not in .girt"
    exit 1
fi


if ! test -d .girt/master/index
then
    echo "staged directory doesn't exist"
fi

if ! test -d .girt/master/repository
then
    echo "commit directory doesn't exist"
fi

if ! test -f .girt/master/logs
then
    echo "logs doesn't exists"
fi

if ! test $(cat .girt/branch) = "master"
then
    echo "branch is not master"
fi

output=$(./girt-init)
if ! test "$output" = "./girt-init: error: .girt already exists"
then
    echo "didn't check if .girt exists"
fi
echo "|--------------- Finish --------------|"