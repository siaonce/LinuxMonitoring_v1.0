#!/bin/bash

export START=$(date +%s%N)

if [[ $# != 1 ]]; then
    echo "Wrong parametres"
elif [[ ${1: -1} != "/" ]]; then
    echo "Wrong parametres"
else
    export number_folders=$(sudo find $1 -type d | wc -l)
    export big_folders=$(sudo du -Sh $1 | sort -rh | head -5 | cat -n | awk '{print $1" - "$3", "$2}')
    export total_number_files=$(sudo find $1 -type f | wc -l)
    export conf_folders=$(sudo find $1 -type f -name "*.conf" | wc -l)
    export text_files=$(sudo find $1 -type f -name "*.txt" | wc -l)
    export exe_files=$(sudo find $1 -type f -executable -exec du -h {} + | wc | awk '{ print $1 }')
    export log_files=$(sudo find $1 -type f -name ".log" | wc -l)
    export archieve_files=$(sudo find $1 -regex '.*\(tar\|zip\|gz\|rar\)' | wc -l)
    export symbolic_links=$(sudo find $1 -type l | wc -l)
    export big_files=$(sudo find $1 -type f -exec du -Sh {} + | sort -rh | head -10 | cat -n | awk '{print $1" - "$3", "$2}')
    export big_executable_files=$(sudo find $1 -type f -executable -exec du -h {} + | sort -hr | head -10 | cat -n | awk '{print $1" - "$3", "$2}')
    sudo chmod +x print.sh
    ./print.sh
fi