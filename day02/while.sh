
#!/bin/bash

#While loop in Shebang file

num=0
while [[ $(($num%2))==0 && $num -le 30 ]]
do
	echo $num
	num=$((num+5))
done
