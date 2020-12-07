# Exercise 2

In an interactive PowerShell session, complete the following:

## Part 1

* Using `Read-Host`, prompt the user for a value for circle radius
* Using the `[Math]` class, calculate and display the area and circumference for the circle
* Area = Pi * radius * radius
* Circumference = 2 * Pi * radius
* Format the resulting output to 2 decimal places

**NOTE: Alternatively, you can run in a script instead. To do so, you may need to run `Set-ExecutionPollicy -ExecutionPolicy RemoteSigned -Scope Process` in your PowerShell session in order to be able to execute.**

## Part 2

* Using `Read-Host`, prompt the user for a cost and tax rate
* Calculate and display total cost (including tax)
* Prompt the user for amount paid
* Calculate and display a summary message showing total cost, amount paid, and change (formatted as currency)

**NOTE: Alternatively, you can run in a script instead. To do so, you may need to run `Set-ExecutionPollicy -ExecutionPolicy RemoteSigned -Scope Process` in your PowerShell session in order to be able to execute.**

## Part 3

* Create an array of 10 decimal values
* Add another array of 2 string values to create a new array storing the combined result
* Add 1.04 to the first, third, fifth, and last elements in the array
* Output the results to demonstrate resulting modifications

## Part 4

* Create an ArrayList to store server details
* Add a new custom object to the ArrayList to represent the server including properties for server name, department and status ("Working" or "Broken") using values of your choosing for the name and department
* Add 3 more custom objects to the ArrayList for additional servers
* Replace the second server with a new server (new name and new department)
* Update the department for the last server in the collection
* Remove the first server from the list
* Display the full list to output the resulting collection after the modifications

## Part 5

* Use hashtable "splatting" to define a couple of different "styles" (combos of foreground and background colors)
* Execute `Write-Host` to output the same text using each "style"
