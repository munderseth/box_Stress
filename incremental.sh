testspace config url http://095d8acfaaf71b4a0f3767e41152620ebdda1b31:@mark.stridespace.com/box_Stress/incremental

count=5

testspace ?start

for (( i=1; i<=$count; i++))
do
   echo "push ADD # $i"
   testspace [ADD-$i]test_space.xml ?add
done

testspace ?finish