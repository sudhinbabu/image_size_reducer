#!/bin/bash

quality=${3:-75};
extension=${2:-JPG};
if [[ -d "$1" ]] 
then
    prefix=${1%/}
else
    echo "Invalid or no perfix passed setting prefix=$(pwd)";
    prefix=$(pwd)
    
fi


mkdir -p $prefix"/converted";
for f in $prefix/*.$extension ; do 
    filename=${f##*/}
    echo "convert $f -quality $quality $prefix/converted/$filename" ; 
    convert $f -quality $quality $prefix/converted/$filename; 
done
