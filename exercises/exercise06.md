# Exercise 6

**NOTE: To run your script, you may need to run `Set-ExecutionPollicy -ExecutionPolicy RemoteSigned -Scope Process` in your PowerShell session in order to be able to execute.**

In a .ps1 script file, implement a PowerShell checkout lane by modifying the code for exercise 5 to use functions:

* Create a function to gather items from the user
  * In a loop, prompt the user for an item name and cost
  * Store the name and cost in a collection
  * Continue to prompt the user for items until they enter "DONE"
* Create a function to calculate subtotal from the set of items
  * Sum the total of all items
  * Apply a 7.5% sales tax to the total
* Present a total including tax to the user
* Create a function to gather payment from the user
  * Prompt the user for a payment amount
  * If the amount entered is not enough to cover the total (with tax), print a message and exit
  * Otherwise, calculate change
* Create a function to output a summary of the results
  * Display all items purchased, the final total (with tax), the amount paid, and change amount
  * Format numbers as currency
