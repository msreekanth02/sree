# sysmnt.sh
# Display System Maintenance Menu and branches control to 
# carry out appropriate house-keeping job

while true
do
	# Display System Maintenance Menu
	clear
	writerc "\033[36mPayroll Processing System\033[37m" 7 27 "B"
	writerc "\033[32mSystem Maintenance Menu\033[37m" 8 28 "B"
	writerc "\033[1mL\033[0mose month" 10 30 "N"
	writerc "\033[1mC\033[0mlose year & reorganise" 11 30 "N"
	writerc "\033[1mR\033[0meturn to main menu" 12 30 "N"
	writerc "Your Choice?" 14 30 "N"
	
	# Receive User's Choice
	choice=""
	stty -icanon min 0,time 0
	while [ -z "$choice" ]
	do
		read choice
	done
	stty sane
	
	#check user's choice and branch off to
	#carry out appropriate house-keeping job
	case "$choice" in
		[Ll]) clmonth.sh;;
		[Cc]) clyear.sh;;
		[Rr]) clear
			break;;
		*) echo \007;;
	esac
done

