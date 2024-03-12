#!/bin/bash

declare -a myArray=(
[0]=bizhan
[1]=Laripour
[2]=herat
[3]=hello
[4]=world
)

#!this is for printing all members of array
echo "${myArray[@]}"

#!this is for iterating on a array and printing members
for val in ${myArray[@]}
do
echo -e "$val \n"
done

#!this is for getting number of elements of array

declare -a sports=(
[0]=football
[1]=baseball
[2]=golf
)

#! add elemnts to array with index
echo "${#sports[@]}"

declare -a secondArray=(
[0]=first
[1]=second
[2]=third
[3]=forth
)

echo "${#secondArray[@]}"
echo "${secondArray[@]}"
secondArray[4]=fifth
secondArray[5]=sixth
echo "${#secondArray[@]}"
echo "${secondArray[@]}"


#! add element to array without index


declare -a addArray=(
[0]=name
[1]=lastName
[2]=bizhan
)

echo "${#addArray[@]}"

addArray+=(akbar  asghar)

echo "${#addArray[@]}"


echo "${addArray[@]}"

for value in "${addArray[@]}"
do
echo -e "$value \n"
