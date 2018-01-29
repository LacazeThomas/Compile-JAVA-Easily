#!/bin/bash
FILE=$1
filename=${FILE%%.*}
extension=${FILE##*.}
if [ $# -eq 1 ]; then
    if [ -f $FILE ]; then
        if [[ "$extension" == "java" ]]; then
            rm *.class
            javac $FILE
            java $filename
        else
            echo "Error don't forget to use the .java not .class"
        fi
    else
        echo "Error the file is not found!"
    fi
else
    echo "Usage: $0 fileToCompile.java"
fi