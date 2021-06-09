#This script prints every .agr file in the current folder to .eps
for file in $(ls *.agr)
do
    bn=$(basename $file .agr)
    gracebat $file -hdevice EPS -printfile $bn.eps
done
