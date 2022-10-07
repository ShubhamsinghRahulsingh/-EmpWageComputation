echo " Welcome to Employee wage computation Program"

isPartTime=1;
isFullTime=2;
empRatePerHr=20;

randomCheck=$((RANDOM%3));

if [ $isPartTime -eq $randomCheck ]
then
empHrs=4;
elif [ $isFullTime -eq $randomCheck ]
then
empHrs=8;
else
empHrs=0;
fi
Salary=$(($empHrs*empRatePerHr))
echo "Salary=$Salary"
