#paymain.sh
#Does some initial house-keeping, Displays Main Menu
#and branches control to appropriate sub-menu.

MASTER=$HOME/myproject/emaster.dbf
TRAN=$HOME/myproject/etran.dbf
export MASTER TRAN

# Check if master and transaction files exist
if [! -f $MASTER ]
then
	touch $MASTER
fi

if [! -f $TRAN ]
then
	touch $TRAN
fi

while true
do
	#Display Main Menu
	clear
	writecenter "Payroll Processing System"7"B"
	writecenter "Main Menu" 8 "N"
	writerc "\033[1mD\033[0matabase operations" 10 30 "N"
	writerc "\033[1mR\033[0meports" 11 30 "N"
	writerc "\033[1mS\033[0mystem maintenance" 12 30 "N"
	writerc "\033[1mE\033[0mxit" 13 30 "N"
	writerc "Your Choice?" 15 30 "N"

	# Receive User's Choice
	choice = " "
	stty -icanon min 0, time 0
	while [ -z "$choice" ]
	do
		read choice
	done
	stty sane
	
	# Branch off to appropriate menu
	case "$choice" in
		[Dd]) dboper.sh;;
		[Rr]) reports.sh;;
		[Ss]) sysmnt.sh;;
		[Ee]) clear
		      exit;;
		*) echo \007;;
	esac
done

