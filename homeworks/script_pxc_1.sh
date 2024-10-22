#!/bin/bash

echo "My username is $USER" > question01.txt
echo "My home directory is $HOME" >> question01.txt
echo "The content of the tfcb_2024/lecture04/directory are" >> question01.txt
ls /workspaces/tfcb_2024/lectures/lecture04 >> question01.txt
mkdir -p /workspace/tfcb_2024/homeworks/homework02
mv question01.txt /workspaces/tfcb_2024/homeworks/homework02

