# 11. The script receives two file names as arguments, the script must check whether the files are     
# same or not, if they are similar then delete the second file.

if [ ! -f $1 ]; then
        echo "$1 not found!"
        exit
fi

if [ ! -f $2 ]; then
        echo "$2 not found!"
        exit
fi

my_var=$(cmp -b $1 $2)
if test -z "$my_var"
then
        echo "Files are same"
        rm $2
        echo $2 "Deleted"
else
        echo "Files are not same"
fi

 
# Output : 

# [ec2-user@ip-172-31-85-227 one]$ ./11.sh students.dat sports.dat
# Files are not same

