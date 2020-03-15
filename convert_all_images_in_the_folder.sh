#!/bin/bash
 
mkdir -p converted
for f in *.JPG ; do 
    echo $f;
    convert $f -quality 75 converted/$f ; 

done
