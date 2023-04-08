#!/bin/bash


whiteBack="\033[107m"
redBack="\033[41m"
greenBack="\033[42m"
blueBack="\033[44m"
purpleBack="\033[45m"
blackBack="\033[40m"

end="\e[0m"

whiteT="\033[97m"
redT="\033[31m"
greenT="\033[32m"
blueT="\033[34m"
purpleT="\033[35m"
blackT="\033[30m"


arr[0]=$Firstparam
arr[1]=$Secondparam
arr[2]=$Thirdparam
arr[3]=$Fourthparam

for i in 0 1 2 3; do
	if [[ -z ${arr[$i]} ]]; then
		arr[$i]=1
		param[$i]=1
	fi
done

for i in 0 1 2 3; do
    if [[ ${arr[i]} < 1 || ${arr[i]} > 6 ]]; then
        echo "Wrong arguments"
        exit 1
    fi
done

for i in 0 1 2 3; do
    if [[ ${arr[i]} == 1 ]]; then
        color[$i]="(white)"
    elif [[ ${arr[i]} == 2 ]]; then
        color[$i]="(red)"
    elif [[ ${arr[i]} == 3 ]]; then
        color[$i]="(green)"
    elif [[ ${arr[i]} == 4 ]]; then
        color[$i]="(blue)"
    elif [[ ${arr[i]} == 5 ]]; then
        color[$i]="(purple)"
    elif [[ ${arr[i]} == 6 ]]; then
        color[$i]="(black)"
    fi
done


if [[ ${arr[0]} == ${arr[1]} ]]; then
    echo "Background and text color must not match, call the script again"
    exit 1
elif [[ ${arr[2]} == ${arr[3]} ]]; then
    echo "Background and text color must not match, call the script again"
    exit 1
fi

for i in 1 3; do
    if [[ ${arr[$i]} == 1 ]]; then
        new_arr[$i]=$whiteT
    elif [[ ${arr[$i]} == 2 ]]; then
        new_arr[$i]=$redT
    elif [[ ${arr[$i]} == 3 ]]; then
        new_arr[$i]=$greenT
    elif [[ ${arr[i]} == 4 ]]; then
        new_arr[$i]=$blueT
    elif [[ ${arr[$i]} == 5 ]]; then
        new_arr[$i]=$purpleT
    elif [[ ${arr[$i]} == 6 ]]; then
        new_arr[$i]=$blackT
    fi
done


for i in 0 2; do
    if [[ ${arr[$i]} == 1 ]]; then
        new_arr[$i]=$whiteBack
    elif [[ ${arr[$i]} == 2 ]]; then
        new_arr[$i]=$redBack
    elif [[ ${arr[$i]} == 3 ]]; then
        new_arr[$i]=$greenBack
    elif [[ ${arr[i]} == 4 ]]; then
        new_arr[$i]=$blueBack
    elif [[ ${arr[$i]} == 5 ]]; then
        new_arr[$i]=$purpleBack
    elif [[ ${arr[$i]} == 6 ]]; then
        new_arr[$i]=$blackBack
    fi  
done



echo -e "${new_arr[0]}${new_arr[1]}HOSTNAME$end = ${new_arr[2]}${new_arr[3]}$HOSTNAME$end"
echo -e "${new_arr[0]}${new_arr[1]}TIMEZONE$end = ${new_arr[2]}${new_arr[3]}$TIMEZONE$end"
echo -e "${new_arr[0]}${new_arr[1]}USER$end = ${new_arr[2]}${new_arr[3]}$USER$end"
echo -e "${new_arr[0]}${new_arr[1]}OC$end = ${new_arr[2]}${new_arr[3]}$OC$end"
echo -e "${new_arr[0]}${new_arr[1]}DATE$end = ${new_arr[2]}${new_arr[3]}$DATE$end"
echo -e "${new_arr[0]}${new_arr[1]}UPTIME$end = ${new_arr[2]}${new_arr[3]}$UPTIME$end"
echo -e "${new_arr[0]}${new_arr[1]}UPTIME_SEC$end = ${new_arr[2]}${new_arr[3]}$UPTIME_SEC$end"
echo -e "${new_arr[0]}${new_arr[1]}IP$end = ${new_arr[2]}${new_arr[3]}$IP$end"
echo -e "${new_arr[0]}${new_arr[1]}MASK$end = ${new_arr[2]}${new_arr[3]}$MASK$end"
echo -e "${new_arr[0]}${new_arr[1]}GATEWAY$end = ${new_arr[2]}${new_arr[3]}$GATEWAY$end"
echo -e "${new_arr[0]}${new_arr[1]}RAM_TOTAL$end = ${new_arr[2]}${new_arr[3]}$RAM_TOTAL$end"
echo -e "${new_arr[0]}${new_arr[1]}RAM_USED$end = ${new_arr[2]}${new_arr[3]}$RAM_USED$end"
echo -e "${new_arr[0]}${new_arr[1]}RAM_FREE$end = ${new_arr[2]}${new_arr[3]}$RAM_FREE$end"
echo -e "${new_arr[0]}${new_arr[1]}SPACE_ROOT$end = ${new_arr[2]}${new_arr[3]}$SPACE_ROOT$end"
echo -e "${new_arr[0]}${new_arr[1]}SPACE_ROOT_USED$end = ${new_arr[2]}${new_arr[3]}$SPACE_ROOT_USED$end"
echo -e "${new_arr[0]}${new_arr[1]}SPACE_ROOT_FREE$end = ${new_arr[2]}${new_arr[3]}$SPACE_ROOT_FREE$end\n"


if [[ ${param[0]} == 1 ]]; then
	echo "Column 1 background = default ${color[0]}"
else
	echo "Column 1 background = ${arr[0]} ${color[0]}"
fi

if [[ ${param[1]} == 1 ]]; then
    echo "Column 1 font color = default ${color[1]}"
else
    echo "Column 1 font color = ${arr[1]} ${color[1]}"
fi

if [[ ${param[2]} == 1 ]]; then
    echo "Column 2 background = default ${color[2]}"
else    
    echo "Column 2 background = ${arr[2]} ${color[2]}"
fi  

if [[ ${param[3]} == 1 ]]; then
    echo "Column 2 font color = default ${color[3]}"
else
    echo "Column 2 font color = ${arr[3]} ${color[3]}"
fi