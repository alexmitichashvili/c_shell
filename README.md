# c_shell


This project is a step in learning and understanding the C language and what it is capabale of.\
The tutorial can be found here: https://brennan.io/2015/01/16/write-a-shell-in-c/ \
Tested on Fedora Linux, once ran ./cshell the process starts:\
the "ls" command works, "help" works, "exit" works, "cd" somehow does not. \


![CI](https://github.com/alexmitichashvili/c_shell/actions/workflows/ci.yml/badge.svg)

## Build from source

    make
    ./cshell

## Run with Docker

    docker run -it --rm ghcr.io/alexmitichashvili/cshell:latest

## Builtins

`cd`, `help`, `exit`
