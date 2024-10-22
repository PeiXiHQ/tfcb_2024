#!/bin/bash

mkdir question02
cd question02
input_file="../list.txt" 
for i in $(cat "$input_file"); do
echo hello there > file$i.txt
done


