#! /usr/bin/bash

# Ask the user for their name and age, and output a message with their name and the year they were born.
echo "Solution to Question 1"
read -p "Please enter your name: " name
read -p "please enter your age: " age

year=$((2023 - $age))

echo "my name is $name" "I was born in the year $year"


# Create a new directory with a name provided by the user, and navigate into it.
echo "Solution to Question 2"
read -p "enter name for file: " name_of_file 
mkdir $name_of_file 
cd $name_of_file 

# List all files in the current directory, sorted by file size.
echo "Solution to Question 3"
ls -s

# Count the number of files in the current directory and output the result.
echo "Solution to Question 4"
ls | wc -l 

# Take a list of numbers as input from the user and output the sum of those numbers.
echo "Solution to Question 5"
read -p "enter first numbers: " num1
read -p "enter second numbers: " num2
read -p "enter third numbers: " num3
read -p "enter fourth numbers: " num4

sum=$(($num1 + $num2 + $num3 + $num4))

echo "sum is: $sum"

# Output a random number between 1 and 100.
echo "Solution to Question 6"
echo $((1 + $RANDOM % 100))

for i in $(seq 1 10); do
	  echo $(( ( $RANDOM % 100 ) + 1 ))
  done

  # Create a backup of a specified file by copying it to a backup directory with a timestamp in the filename.
echo "Solution to Question 7"
  file_name=test_files.txt

  current_time=$(date "+%Y.%m.%d-%H.%M.%S")
  echo "Current Time : $current_time"

  file_name=$file_name.$current_time
  echo "file_name: " "$file_name "


  backup_dir="/home/backup/backup_${file_name}_$(date +%Y-%m-%d_%Hh%Mm%Ssec)/"
  echo $backup_dir

  echo "You should see new file generated with timestamp on it.."


  # Check if a website is online and output a message indicating whether it is up or down.
echo "Solution to Question 8"
  if curl -I "https://www.google.com" 2>&1 | grep -w "200\|301" ; 
  then
	      echo "google.com is up"
      else
	          echo "google.com is down"
  fi


  # Convert a temperature in Celsius to Fahrenheit, using input from the user.
echo "Solution to Question 9"
  read -p "Enter degree celsius temperature: " c
  f=$((180*$c/100+32))
  echo The temperature in Fahrenheit is $f


  # Ask the user for a sentence, then output the sentence in reverse order. For example, if the user enters “Hello, world!”, the script should output “!dlrow ,olleH”.
echo "Solution to Question 10"
  s="Hello World!"
  strlen=${#s}
  for (( i=$strlen-1; i>=0; i-- ));
  do
	      revstr=$revstr${s:$i:1}
      done
      echo "Original String : $s"
      echo "Reversed String : $revstr"

