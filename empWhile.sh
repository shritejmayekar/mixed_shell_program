#! /bin/bash -x

#CONSTANTS

IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HR=20
MAX_HRS_IN_MONTH=10
NUM_WORKING_DAYS=20

# VARIABLES
totalEmpHR=0
totalWorkingDays=0

while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH  && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        employeeCheck=$((RANDOM%3))

        case $employeeCheck in
                $IS_FULL_TIME )
                                empHrs=8;;
                $IS_PART_TIME )
                                empHrs=4;;
                *)
                                empHrs=0;;

        esac
        totalEmpHr=$((totalEmpHr+empHrs))
done
salary=$((EMP_RATE_PER_HR*totalEmpHr))
echo "The salary is $salary"
