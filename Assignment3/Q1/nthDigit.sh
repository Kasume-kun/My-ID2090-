#!/usr/bin/bash
#
#Script by Sumedh Kangne, BE21B040
#
#
#Usage:
#chmod 755 nthDigit.sh
#./nthDigit.sh <"String"> <n>
#
#
#
function nthDigit(){
	var="$( echo "scale=$(($2+1));$1" | bc -l )"
	#echo $var
	substr="${var:(-2):1}"
	echo $substr
}

if [[ $2 -gt 0 ]]
then
	if [ "$1" = "$(echo $1 | grep 'pi')" ]
	then
		nthDigit "${1//pi/4*a(1)}" $2
	fi

	if [ "$1" = "$(echo $1 | grep 'e')" ]
	then
        	nthDigit "${1//e/e(1)}" $2
	fi
else
	echo "Input a Positive Argument"
fi
