# Arguments
echo $0
echo $1
# need brackets if multiple digits
echo ${2}
# number of args
echo $#
# array of args
echo $*

# Variables
mynum=5
mynum2=5
mycolor=orange
mymsg="hello world $mynum"

echo $mynum
echo $mycolor
echo $mymsg

# Arithmetic
echo '1+1 = $((1+1))'
echo $((mynum+mynum2))
echo hello world
mysum=$((mynum-mynum2))
echo $mysum

# Conditionals
if [ $mynum -le $mynum2 ]; then
    echo "they are equal"
fi

if ((mynum < mynum2)); then
    echo "num less than num2"
fi

# Loops
for val in 0 1 2 3 4
do
    echo $val
done

for val in hello goodbye party
do
    echo $val
done

for val in {1..9..3}
do
    echo $val
done

# Loop through argument array
for val in $@
do
    echo $val
done

# A while loop to shift through input
while (($# > 0))
do
    echo $1
    shift
done
