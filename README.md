# Supermarket and Calculator Application

A comprehensive Bash script project that allows users to perform multiple tasks:
1. View team and submission details.
2. Browse a grocery list with prices.
3. Calculate basic math operations.
4. Exchange currency rates.
5. Manage and track a user's account with signup and login functionality.

## Features
- **Team Information**: Displays the names and IDs of team members.
- **Submitted To**: Displays the name of the project supervisors.
- **Supermarket Items**: Displays a list of grocery items with prices for easy selection.
- **Calculator**: Supports basic math operations (addition, subtraction, multiplication, division).
- **Currency Exchanger**: Provides real-time currency exchange rates for various currencies.
- **Account Management**: Allows users to sign up and log in to the application.

## Requirements
- Bash (installed by default in Unix-based systems like Linux and macOS)
- `bc` (for floating-point calculations)

## Installation
1. Clone this repository to your local machine.
   ```bash
   git clone <repository-url>
   cd <repository-directory>
   ```
2.Give execution permission to the script
   ```bash
   chmod +x Project.sh
```

## Usage
Run the script by executing:
```bash
./Project.sh
```
The application will prompt you with a home menu where you can select various options to use the features.

## Menu Options
 1. Submitted By: Displays team members' information.
 2. Submitted To: Displays supervisors' information.
 3. Grocery List: Shows items with quantities and prices.
 4. Calculator: Offers arithmetic operations (addition, subtraction, multiplication, division).
 5. Currency Exchanger: Allows you to convert Taka to other currencies.
 6. Exit: Closes the application.
## Calculator Usage
 1. Select the calculator option from the main menu.
 2. Choose an operation from addition, subtraction, multiplication, and division.
 3. Input the required numbers, and the calculator will display the result.
## Currency Exchanger Usage
 1. Select the currency exchanger option from the main menu.
 2. Choose the currency by entering its corresponding number.
 3. Input the amount to convert, and the script will display the result in Taka.
## License
This project is licensed under the [MIT License](./LICENSE.md).
