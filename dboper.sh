# dboper.sh
# Display Database Operations Menu and branches control to 
# either Master or Transaction Data Entry Menu.

while true
do
	# display Database Operations Menu
	clear
	writecenter "Payroll Processing System" 7 "B"
	writecenter "Database Operation" 8 "B"
	writerc "\033[1mM\033[0master File Data Entry" 10 30 "N"
	writerc "\033[1mT\033[0mransaction Data Entry" 11 30 "N"
	writerc "\033[1mR\033[0meturn to Main Menu" 12 30 "N"
	writerc "Your Choice?" 15 30 "N"

	# Receive User's Choice
	choice = " "
	stty -icanon min 0, time 0
	while [ -z "$choice" ]
	do
		read choice
	done
	stty sane
	
	# Check user's choice and branch off to 
	# appropriate Data Entry Menu
	case "$choice" in
		[Mm] mde.sh;;
		[Tt] tde.sh;;
		[Rr] clear
		     break;;
		*) echo \007;;
	esac
done
