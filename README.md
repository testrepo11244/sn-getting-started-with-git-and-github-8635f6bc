# Simple Interest Calculator

A command-line Simple Interest Calculator written in Bash. The calculator asks the user for the principal amount, annual rate of interest, and time period, then computes the simple interest and the total amount payable.

## Project Name

Simple Interest Calculator

## Description

This project provides a small, easy-to-use Bash script that calculates simple interest using the standard formula:

Simple Interest = (Principal × Rate × Time) / 100

The total amount is calculated as:

Total Amount = Principal + Simple Interest

The script accepts decimal values for the principal, rate, and time period. It validates the input and prints the result rounded to two decimal places.

## Features

- Calculates simple interest from user-provided values.
- Accepts principal, annual rate of interest, and time period in years.
- Supports decimal input.
- Validates that inputs are non-negative numbers.
- Displays both the simple interest and the total amount.
- Includes a help option.
- Uses only Bash and standard Unix tools such as awk.

## Input Fields

The calculator prompts for the following values:

1. Principal amount — the original sum of money.
2. Rate of interest — the annual interest rate as a percentage.
3. Time period — the duration in years.

## Requirements

- Bash 4.0 or later.
- awk, which is available by default on most Linux and macOS systems.

## Usage

Make the script executable:

chmod +x simple-interest.sh

Run the script:

./simple-interest.sh

Example session:

Simple Interest Calculator
Enter principal amount: 10000
Enter annual rate of interest (%): 5
Enter time period (years): 3

Principal amount : 10000.00
Rate of interest : 5.00%
Time period      : 3.00 years
Simple interest  : 1500.00
Total amount     : 11500.00

For the example above, the calculation is:

Simple Interest = (10000 × 5 × 3) / 100 = 1500.00

Total Amount = 10000 + 1500.00 = 11500.00

## Help

Display usage information with:

./simple-interest.sh --help

## Repository Files

- README.md — project overview and usage instructions.
- LICENSE — Apache License 2.0.
- CODE_OF_CONDUCT — community code of conduct.
- CONTRIBUTING.md — contribution guidelines.
- simple-interest.sh — Bash script that performs the simple interest calculation.

## Contributing

All contributions, bug reports, bug fixes, documentation improvements, enhancements, and ideas are welcome. Please read CONTRIBUTING.md before submitting a contribution.

## Code of Conduct

This project follows the community standards described in CODE_OF_CONDUCT.

## License

This project is licensed under the Apache License 2.0. See the LICENSE file for details.