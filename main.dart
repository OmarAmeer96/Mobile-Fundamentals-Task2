// Categorize a list of numbers into even or odd using for loop and switch case
/*
Requirement 1:
Title: Categorize a list of numbers into even or odd
Description: Add a list of numbers 
Iterate each number in the list using for for-loop 
Use the switch case to check if it is even or odd

Delivery method:
Upload a dart file with the code to a public GitHub repo and a screenshot of the output  
repo should be:
1 - In an account with a username similar to your real name
2 - Repo should be public
3 - Repo should have a readme.md file contains
4 - Add a short comment to explain your code
5 - use clear and self-explanatory names for variables and functions
*/

/// Enum [NumberType] to categorize the number
enum NumberType {
  even,
  odd,
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Iterate each number in the list using for for-loop
  for (int number in numbers) {
    // Get the number type
    NumberType numberType = getNumberType(number);
    // Use the switch case to check if it is even or odd, and then print the result
    switch (numberType) {
      case NumberType.even:
        print('$number is even');
        break;
      case NumberType.odd:
        print('$number is odd');
        break;
    }
  }
}

/// Function [getNumberType] to determine if a number is even or odd
NumberType getNumberType(int number) {
  return number % 2 == 0 ? NumberType.even : NumberType.odd;
}
