#!/bin/bash

if [[ $# != 0 ]]; then
    echo "Wrong parametres"
else
    source color_conf.conf
    export Firstparam=$column1_background
    export Secondparam=$column1_font_color
    export Thirdparam=$column2_background
    export Fourthparam=$column2_font_color
    
    chmod +x export.sh
    ./export.sh
fi