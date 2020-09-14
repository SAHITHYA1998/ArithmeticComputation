#! /bin/bash 
declare -A result
echo "Welcome to Arithmetic Computation Programming"

read -p "Enter first input " a
read -p "Enter second input " b
read -p "Enter third input " c


Comput1=`awk 'BEGIN{printf("%.2f",'$a' + '$b' * '$c')}'`
echo  $Comput1
Comput2=`awk 'BEGIN{printf("%.2f",'$a' * '$b' + '$c')}'`
echo  $Comput2
Comput3=`awk 'BEGIN{printf("%.2f",'$a' + '$b' / '$c')}'`
echo  $Comput3
Comput4=`awk 'BEGIN{printf("%.2f",'$a' % '$b' + '$c')}'`
echo  $Comput4

result[1]="$Comput1"
result[2]="$Comput2"
result[3]="$Comput3"
result[4]="$Comput4"

echo "Dictionary :  ${result[@]}"

echo "Array : "
for i in ${!result[@]}
do
        arr[i]=${result[$i]}
        echo -n "${arr[i]} "
done

printf "\n"
echo "Results in Descending Order "
n=${#result[@]}

for (( i=1;i<=n-1;i++ ))
do
        for (( j=i;j<=n-i;j++ ))
        do
        if [[ ${arr[$((j+1))]%%.*} -gt ${arr[j]%%.*} ]]
        then
                temp=${arr[j+1]}
                arr[$((j+1))]=${arr[j]}
                arr[j]=$temp
        fi
        done
done

for ((i=1;i<=n;i++))
do
        echo -n "${arr[$i]} "
done



printf "\n"
