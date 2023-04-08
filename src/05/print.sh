#!/bin/bash

echo -e "Total number of folders (including all nested ones) = $number_folders\n"
echo -e "TOP 5 folders of maximum size arranged in descending order (path and size):\n$big_folders\n"
echo -e "Total number of files = $total_number_files\n"
echo -e "Number of:\nConfiguration files (with the .conf extension) = $conf_folders\nText files = $text_files\nExecutable files = $exe_files"
echo -e "Log files (with the extension .log) = $log_files\nArchive files = $archieve_files\nSymbolic links = $symbolic_links\n"
echo -e "TOP 10 files of maximum size arranged in descending order (path, size and type):\n$big_files\n"
echo -e "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):\n$big_executable_files"

END=$(date +%s%N)
DIFF=$((( $END - $START )/1000000))
echo "Script working $DIFF ms."
