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
            echo "Tu es con? Il faut envoyer le .java"
        fi
    else
        echo "Fichier n'existe pas!"
    fi
else
    echo "Problème de paramètre!"
fi