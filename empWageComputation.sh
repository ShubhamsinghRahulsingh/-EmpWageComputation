echo " Welcome to Employee wage computation Program"

empRatePerHr=20;
totalSalary=0;
totalWorkingHour=0;
day=1;

function calculateWorkingHour() {
	case $randomCheck in
		2)
	         empHrs=8;;
                1)
	         empHrs=4;;
		0)
	         empHrs=0;;
esac;
	echo $empHrs;
}

while [[ $day -le 20 && $totalWorkingHour -lt 40 ]]
do
randomCheck=$((RANDOM%3))
	wHour=$(calculateWorkingHour $randomCheck);
	totalWorkingHour=$(($totalWorkingHour+$wHour));
	if [ $totalWorkingHour -gt 40 ] 
then
		totalWorkingHour=$(($totalWorkingHour - $wHour));
		break;
	fi
	salary=$(($empRatePerHr*$wHour));
	totalSalary=$(($totalSalary + $salary));
	((day++));
done
echo "Employee has earned $totalSalary $ in a month (Total working Hour : $totalWorkingHour)"
echo "Daily Wage:"${salary[@]}
echo "Total Wage:"${totalSalary[@]}

