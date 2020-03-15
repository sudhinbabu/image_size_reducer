#!/bin/bash

quality=${2:-75};
if [[ -d "$1" ]] 
then
    prefix=${1%/}
else
    echo "Invalid or no perfix passed setting prefix=$(pwd)";
    prefix=$(pwd)
    
fi


mkdir -p $prefix"/converted";
for f in $prefix/*.JPG ; do 
    # convert $f -quality 75 $prefix/converted/$f ; 
    filename=${f##*/}
    echo "convert $f -quality $quality $prefix/converted/$filename" ; 
done
