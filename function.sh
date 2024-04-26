#!/bin/bash

hello(){
        echo "hello world"
        return 10
}

hello

echo $?
