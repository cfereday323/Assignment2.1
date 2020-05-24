#!/bin/bash
#Ciaran Fereday
#10393236
echo "The details of a rectangle"
echo " "
cat rectangle.txt #Read and Display contents of file
echo " "
echo "---------------------------------------------------"
sed -e 's/ /,/g' rectangle.txt | #Read all lines rectangle.txt
sed -e '1d'| #Delete the header line
sed -e 's/Rec/Name: Rec#/g' | # s is to subsitute the regex /Rec/ with the specified text /Name: Rec #/ 
sed -e 's/,/ Height : /' | 
sed -e 's/,/ Width : /' | 
sed -e 's/,[^,]*/ /' | 
sed -e 's/,/Color : /' > rectangle_f.txt #output ammended content to new file