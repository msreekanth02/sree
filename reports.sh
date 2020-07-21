# reports.sh
# Display Reports Menu and branches control to generate the
# appropriate report

while true
do
	#display Reports Menu
	clear
	writerc "\033[36mPayroll Processing System\033[37m" 7 27 "B"
	writerc "\033[36mReports Menu\033[37m" 8 33 "N"
	writerc "\033[1mM\033[0mailing Labels" 10 30 "N"
	writerc "\033[1mL\033[0meave Status Report" 11 30 "N"
	writerc "\033[1mP\033[0maysheet Printing" 12 30 "N"
	writerc "\033[1mS\033[0mummary Payroll Sheet" 13 30 "N"
	writerc "\033[1mR\033[0meturn to main menu" 14 30 "N"
	writerc "Your Choice?" 16 30 "N"

	# Receive User's choice
	choice= " "
	stty -icanon min 0, time 0
	while [-z "$choice"]
	do
		read choice
	done
	stty sane

	# check user's choice and branch off to 
	# generate an appropriate report
	case "$choice" in
		[Mm]) maillbl.sh;;
		[Ll]) lsr.sh;;
		[Pp]) payprint.sh;;
		[Ss]) spaysheet.sh;;
		[Rr]) clear
			break;;
		*) echo \007;;
	esac
done

