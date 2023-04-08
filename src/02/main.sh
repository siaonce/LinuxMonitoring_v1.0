#!/bin/bash

if [[ $# != 0 ]]; then
    echo "Wrong parametres"
else
    chmod +x export.sh 
    ./export.sh
fi