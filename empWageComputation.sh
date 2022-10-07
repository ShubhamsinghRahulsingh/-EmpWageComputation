echo " Welcome to Employee wage computation Program"

isPresent=1;
randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ]
then
echo "Employee is Present "
empRatePerHr=20;
empHrs=8;
Salary=$(($empRatePerHr*$empHrs));
echo "DailyWage"=$Salary
else
echo "Employee is Absent "
echo "DailyWage="$Salary
fi
