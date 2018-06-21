#!/bin/bash

#Additional comment that wasnt here before

echo "Program generujacy macierz m x n i znajdujacy w niej rozwiniecie 
liczby pi i liczby e"

echo "Prosze podac liczbe m (wiersze)"
read m
echo "Prosze podac liczbe n (kolumny)"
read n


for (( l=$m; $l>0; l-- )) ; do
	for (( i=$n; $i>0; i-- )) ; do
		echo -n "$(($RANDOM%10)) "  >> macierz.txt
	done  
	echo " " >> macierz.txt  
	 	
done


echo ">Rozwiniecie liczby PI dla 2 miejsc po przecinku : "
echo "PI wystapilo razy : "
egrep -c '3 1 4' macierz.txt
egrep -n '3 1 4' macierz.txt

echo " "
echo ">Dla 3 miejsc po przecinku : "
echo "PI wystapilo razy : "
egrep -c '3 1 4 1' macierz.txt
egrep -n '3 1 4 1' macierz.txt

echo " "
echo ">Dla 4 miejsc po przecinku : "
echo "PI wystapilo razy : "
egrep -c '3 1 4 1 5' macierz.txt
egrep -n '3 1 4 1 5' macierz.txt





echo " "
echo ">Rozwniecie liczby E dla 2 miejsc po przecinku: "
echo "E wystapilo razy : "
egrep -c '2 7 1' macierz.txt
egrep -n '2 7 1' macierz.txt


echo ">Dla 3 miejsc po przecinku: "
echo "E wystapilo razy : "
egrep -c '2 7 1 8' macierz.txt
egrep -n '2 7 1 8' macierz.txt

echo ">Dla 4 miejsc po przecinku: "
echo "E wystapilo razy : "
egrep -c '2 7 1 8 2' macierz.txt
egrep -n '2 7 1 8 2' macierz.txt
