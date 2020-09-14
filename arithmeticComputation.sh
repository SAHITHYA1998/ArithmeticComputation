#! /bin/bash -x
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
