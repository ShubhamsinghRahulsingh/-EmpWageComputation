echo " Welcome to Employee wage computation Program"

numWorkingDays=20;
empRatePerHr=20;
totalWorkingHour=0;
day=1;

while [[ $day -le 20 && $totalWorkingHour -lt 40 ]]
do
	randomCheck=$((RANDOM%3));
	case $randomCheck in
		0)
		empHrs=0;;
                1)
		empHrs=4;;
		2)
		empHrs=8;;

esac

	totalWorkingHour=$(($totalWorkingHour+$empHrs))

	if [ $totalWorkingHour -gt 40 ]
	then
		totalWorkingHour=$(($totalWorkingHour - $empHrs))
		break;
	fi
	salary=$(($empRatePerHr*$empHrs))
	totalSalary=$(($totalSalary + $salary));
	((day++));
done
echo "Employee has earned $totalSalary $ in a month (Total working Hour : $totalWorkingHour)";
