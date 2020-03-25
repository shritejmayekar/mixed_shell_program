#! /bin/bash -x

# CONSTANTS FOR THE MONTH
IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HRS_IN_MONTH=4
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20

# Variable
totalEmpHr=0
totalWorkingDays=0
totalWorkHours=0

# Function get working hours
function getWorkingHours() {
    case $1 in
        $IS_FULL_TIME)
            workHours=8
            ;;
        $IS_PART_TIME)
            workHours=4
            ;;
        *)
            workHours=0
            ;;
    esac

    echo $workHours
}

function calDailyWage() {
    workHrs=$1
    wage=$(($workHrs*$EMP_RATE_PER_HR))
    echo $wage
}


while [ $totalWorkHours -lt $MAX_HRS_IN_MONTH ] && [ $totalWorkingDays -lt $EMP_RATE_PER_HR ]
do
    ((totalWorkingDays++))
    workHours="$( getWorkingHours $((RANDOM%3)) )"
    totalWorkHours=$(($totalWorkHours+$workHours))
    empDailyWage["$totalWorkingDays"]="$( calDailyWage $workHours)"
done

# totalSalary=$(($totalWorkHours*$EMP_RATE_PER_HR))

# echo "Monthly salary of person $totalSalary"

totalSalary="$( calDailyWage $totalWorkHours)"

echo "Monthly salary of person  $totalSalary"
echo "Daily wage ${empDailyWage[@]}"
echo "All keys  ${!empDailyWage[@]}"

