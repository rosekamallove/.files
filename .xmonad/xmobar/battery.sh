BAT_STATUS=$(acpi)

IFS=','

read -a statusArr <<< "$BAT_STATUS"

echo "${#statusArr[3]} ${#statusArr[4]} ${#statusArr[5]}"


