#! /usr/local/bin/bash

# array creation
arr=(hello world)
arr_ex2[2]=happy
arr_ex2[3]=world
arr_ex2[0]=sunny

# accessing values
echo ${arr[0]}
echo ${arr[1]}
echo ${arr_ex2[2]}

# array indices
echo ${!arr_ex2[@]}
# number of items
echo ${#arr_ex2[@]}

# concatenating arrays
arr_ex3=(
    snowy
    icy
    cold
    hot
)
arr_ex3+=(sunny rainy cloudy)
echo ${arr_ex3}

# array of all elements
echo ${arr_ex3[@]}
# string representation of array
echo ${arr_ex3[*]}
# slicing, start at 2, get 3 values
echo ${arr_ex3[@]:2:3}

# associative Arrays
declare -A aarr
aarr=(
    [rainy]=6
    [cloudy]=7
    [warm]=1
)
echo ${!aarr[@]}

# associative arrays - looping
for key in ${!aarr[@]}
do
    echo ${aarr[$key]}
done

# functions
# a simple function with no arguments
hello_world () {
    echo "hello world"
}

# function that uses multiple arguments
# passed/accessed just like they are to a bash script
# function doesn't know they are coming
hello_world () {
    echo "hello world $1 it is a $2 day"
}

# calling functions
hello_world
hello_world Bob awful
