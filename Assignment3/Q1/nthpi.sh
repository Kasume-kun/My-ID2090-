#!/usr/bin/bash

function nthDigit(){
	echo $1
	var="$( echo "scale=$(($2+1));$1" | bc -l )"
	echo $var
	substr="${var:(-2):1}"
	echo $substr
}

if [ "$1" = "$(echo $1 | grep 'pi')" ]
then
	echo "worked"
	nthDigit "${1//pi/4*a(1)}" $2
fi

if [ "$1" = "$(echo $1 | grep 'e')" ]
then
        echo "worked"
        nthDigit "${1//e/e(1)}" $2
fi
