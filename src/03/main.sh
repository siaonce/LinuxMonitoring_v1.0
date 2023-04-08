#!/bin/bash

if [[ $# != 4 ]]; then
    echo "Wrong parametres"
    else
        export Firstparam=$1
        export Secondparam=$2
        export Thirdparam=$3
        export Fourthparam=$4
    
        chmod +x export.sh 
        ./export.sh
    fi