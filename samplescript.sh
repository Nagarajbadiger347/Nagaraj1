#!/bin/bash

################
#Author: Nagaraj
#Date: 01/10/2023
#
# script which is printing number which is divisible by 3 & 5 but not 15
#
#################
for i in {1..100};
do
if [ 'expr $i % 3' == 0] || [ 'expr $i % 5' == 0] && [ 'expr $i % 15' != 0]
then 
     echo $i
fi;
done


---
#!/bin/bash

x=mississipi

grep -o "s" <<<"x" | wc -l


