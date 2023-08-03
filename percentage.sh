#MY NEW FILE
echo "my name is nagaaraj"
#!/bin/bash
echo "please enter your percentage"
read -p "percentage" percentage
if [ $percentage -gt 90 ]
then
 echo "A grade"
elif [ $percentage -gt 70 ] && [ $percentage -lt 90 ]
then 
echo "grade b"
else 
echo "grade c"
fi