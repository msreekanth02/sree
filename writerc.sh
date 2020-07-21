# writerc
# Writes a given string at the given row, column
# either in Bold, Normal or Reverse Video

# check whether called properly
if [$# -ne 4]
then
	echo improper argument
	exit
fi

# position cursor
str="$1"
row=$2
col=$3
attr=$4
tput cup $row $col

# Display string in Bold, Normal or Reverse video
case $attr in
	[bB]) echo -n "\033[1m$str";;
	[nN]) echo -n "$str";;
	[rR]) echo -n "\033[7m$str";;
esac
echo -n "\033[0m"

