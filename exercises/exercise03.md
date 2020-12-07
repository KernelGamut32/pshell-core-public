# Exercise 3

**NOTE: Alternatively, you can run in a script instead. To do so, you may need to run `Set-ExecutionPollicy -ExecutionPolicy RemoteSigned -Scope Process` in your PowerShell session in order to be able to execute.**

In an interactive PowerShell session, complete the following:

## Part 1

* Retrieve detail about the services installed on your machine; use Select-Object to limit returned fields to Name and DisplayName (format output label to read "Display Name"), use Sort-Object to sort the results by DisplayName, and only return the first 10 items in the collection
* Get the list of running services on your machine
* List all running processes on your machine in order of highest CPU usage to lowest
* Display only the five top processes based on virtual memory (VM) usage
* Retrieve the process name and CPU value for the process consuming the most CPU (at execution time)
* Display the newest 100 entries from the Application event log; display values for more columns than the set that is displayed by default (e.g. when the event was generated, ID of the event, etc.) and order by timestamp in descending order (so most recent appears first); use alternative label names for each column to improve readability

## Part 2

* Create an array of 10 decimal values that includes negative and positive numbers
* Gather information on the count, the minimum, maximum, sum and average
* Display the resulting information in the format "The array of XX elements has a minimum value of XX.XX, a maximum value of XX.XX, a sum of XX.XX, and an average of XX.XX"
* Format each piece of data in the results to two decimal places

## Part 3

* Reuse the ArrayList of server detail custom objects created in part 4 of exercise 2
* Process and output a formatted message for each server in the collection in the format of "Server XYZ in Department ABC has status of DEF"
* Display "Processing servers..." before processing the list of servers
* Display "Finished with servers..." after processing the list of servers

## Part 4

* Using `Read-Host`, prompt the user for an input string
* Store the count of each character in a hashtable and display the letter counts
* You'll likely need to process the input string as `[char[]]` to enable execution character-by-character
