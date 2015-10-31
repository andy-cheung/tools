#!/bin/bash

file_list=(`find ./ -type f -name \*.cpp -name \*.cc -name \*.h | xargs`)
for file in ${file_list[*]}
do
    iconv -f "gbk" -t "utf-8" $file > ./temp.txt 
    mv ./temp.txt $file
done
