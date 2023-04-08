#!/bin/bash

read -p "Do you want to write the output to a log file? (Y/N)" log

if [[ $log = y  || $log = Y ]]; then
    namefile=$(date +'%d_%m_%y_%H_%M_%S.status')
    ./print.sh > $namefile
    echo "File saved"
else
    echo "File not saved"
fi