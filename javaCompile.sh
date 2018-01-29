#!/bin/bash
# file = filename + extension
file=$1
filename=${FILE%%.*}
extension=${FILE##*.}
if [ $# -eq 1 ]; then # Test if the number of parameters is to 1
    if [ -f $file ]; then # Test if the file is really a file
        if [[ "$extension" == "java" ]]; then # And test if the extension is "java" and not "class"
            rm *.class
            javac $file
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