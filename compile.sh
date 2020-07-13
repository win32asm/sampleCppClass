#!/bin/bash

# try to detect compiler
if [ -z "${CXX}" ] ; then
    if g++ --version > /dev/null ; then
        CXX=g++
    elif clang++ --version > /dev/null ; then
        CXX=clang++
    else
        echo "No compiler detected; provide in CXX env var"
        exit 1
    fi
fi

# compile all cpp files into test_class
# include debug info, do no optimization
${CXX} *.cpp -o test_class -g -O0
