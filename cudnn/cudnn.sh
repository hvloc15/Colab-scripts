#!/bin/bash
#Cudnn

file="$1"

if [ "$file" = "" ]; then
	echo "Invalid input file"
	exit
fi

cp $1 ./
tar -xzvf $1
cp cuda/include/cudnn.h /usr/local/cuda/include
cp cuda/lib64/libcudnn* /usr/local/cuda/lib64
chmod a+r /usr/local/cuda/include/cudnn.h
rm $1
rm -r cuda/