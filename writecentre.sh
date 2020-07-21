# writecenter
# writes a given string in the center of a given row
# either in Bold. Normal or Reverse Video
# Check whether called properly

if [ $# -ne 3 ]
then
	echo improper arguments
	exit
fi

# Position Cursor
str=$1
row=$2
attr=$3
length = `echo $str | wc -c`
col=`expr \(80 - $length \)/2`
tput cup $row $col

# Display string in Bold, Normal or Reverse Video
case $attr in 
	[bB]) echo -n "\033[1m$str";;
	[nM]) echo -n $str;;
	[rR]) echo -n "\033[7m$str";;
esac
echo -n "\033[0m"
