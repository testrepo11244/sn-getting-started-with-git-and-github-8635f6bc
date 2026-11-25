#!/bin/bash
#
# simple-interest.sh
#
# Simple Interest Calculator
#
# Formula:
#   Simple Interest = (Principal * Rate * Time) / 100
#   Total Amount    = Principal + Simple Interest
#
# The script asks the user for:
#   - principal amount
#   - annual rate of interest
#   - time period in years

set -euo pipefail

print_usage() {
    echo "Usage: $0"
    echo
    echo "Runs an interactive simple interest calculator."
    echo "You will be prompted for the principal amount, annual rate of interest,"
    echo "and time period in years."
    echo
    echo "Options:"
    echo "  -h, --help    Show this help message and exit."
}

validate_number() {
    local value="$1"
    local field_name="$2"

    if [[ -z "$value" ]]; then
        echo "Error: $field_name cannot be empty." >&2
        exit 1
    fi

    if ! [[ "$value" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
        echo "Error: $field_name must be a non-negative number." >&2
        exit 1
    fi
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
    print_usage
    exit 0
fi

echo "Simple Interest Calculator"
echo

read -r -p "Enter principal amount: " principal
read -r -p "Enter annual rate of interest (%): " rate
read -r -p "Enter time period (years): " time

validate_number "$principal" "Principal amount"
validate_number "$rate" "Rate of interest"
validate_number "$time" "Time period"

result="$(
    awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN {
        interest = (p * r * t) / 100
        total = p + interest
        printf "%.2f %.2f", interest, total
    }'
)"

interest="$(echo "$result" | awk '{print $1}')"
total="$(echo "$result" | awk '{print $2}')"

printf "\n"
printf "Principal amount : %.2f\n" "$principal"
printf "Rate of interest : %.2f%%\n" "$rate"
printf "Time period      : %.2f years\n" "$time"
printf "Simple interest  : %s\n" "$interest"
printf "Total amount     : %s\n" "$total"