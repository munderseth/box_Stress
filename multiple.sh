testspace config url http://095d8acfaaf71b4a0f3767e41152620ebdda1b31:@mark.stridespace.com/box_Stress/multiple

count=5

for (( i=1; i<=$count; i++))
do
   echo "push # $i"
   testspace test_space.xml
done
