#! /bin/bash

grep

grep -i "string" file # case insensitive

grep "string" demo_* # string in multiple files that match pattern

grep -iw "is" demo_file #searches for exact word no substring

grep -r "romesh" * #recursive in directory

grep -v -e "a" -e "b" -e "c" test-file.txt #-v does not match patterns after each a

grep -c "go" textfile  #counting matches

grep -c this demo_file

#word nav  
#e - end of current word
#b - go to previous word
#w - next words

# E, B, W for WORDS(192.168.1.1 is a single WORD, nonblank chars separated by whitepace)
# word is sequence of letters,digits and underscores

grep -B 2 "single" file.text # shows 2 lines before the WORD 

sed  insertion, deletion, search and replace

sed 's/unix/linux/' file.txt    #replaces 1st unix per line with linux
sed 's/unix/linux/2' file.txt  #replaces 2nd occurrence of unix per line
sed 's/unix/linux/g' file.txt  #replaces all occurences per line of unix
				#with linux				
sed 's/unix/linux/3g' file.txt  #replaces from 3rd occurence onwards(inc.) 			
sed '3 s/unix/linux/' file.txt # specifically line 3
sed 's/unix/linux/p' geekfile.txt #duplicates replaced lines in o/p

sed '5d' filename.txt #delete line 5
sed '3,6d' filename.txt  #delete lines 3-6 inc.
sed '12,$d' filename.txt #12th to last line
sed '/abc/d' filename.txt

awk '{print $3 "\t" $4}' marks.txt  # print 3rd and 4th column separated by \t
awk '/a/ {print $0}' marks.txt # print lines that match the pattern /a/
awk '/a/' marks.txt
awk '/Maths/{++cnt} END {print "Count = ", cnt}' marks.txt #find count that matches pattern
awk 'length($0) > 20' marks.txt #lines with more than 20 chars

#"$1" is the first argument sent to the script e.g ./script hi

sed -e script

locate filename  # find file

head file # show start of file, tail for end

free -b bytes -k -m megabytes -g gigabytes -tera terabytes  # show memory
