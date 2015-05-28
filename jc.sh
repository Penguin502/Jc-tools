#!/bin/bash

if  [ $# != 0 ]  ;then
    arr=(${1//./ })
    if [ ${#arr[@]}  -gt  1 ] ; then
        if [ ${arr[1]} == "java" ] ;then
	        javac $1
	        if  [ $? == 0 ] ;then
	        #arr=(${1//./ })
	        a=` echo ${arr[0]}`
	        java $a
            fi
        else
            echo "TypeError: File is not Java"
        fi
    elif [ ${arr[0]} == "-version" ] ;then
        echo "TianFeiyu version1.0"
    else
        echo "TypeError: File is not Java"
    fi
else
    echo "ERROR: No Java File Ready to Run."
fi
