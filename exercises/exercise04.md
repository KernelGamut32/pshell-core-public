# Exercise 4

In an interactive PowerShell session, complete the following:

## Part 1

* Using PowerShell, create a new directory called "Transactions" in a location of your choosing
* Create a subdirectory under "Transactions" called "Input"
* Create a subdirectory under "Transactions" called "Output"
* Build and save a CSV file in the "Input" folder with some test records having columns for "TransactionID" and "Amount"; as an alternative, you can build an array of custom objects to capture those details and then use PowerShell to export to the CSV file
* Import the data from "Input" as CSV
* Export the data to JSON in the "Output" folder

## Part 2

* Use Get-EventLog to retrieve EventID, Source, and Message for any errors in the Application log; export the results to a CSV file
* Use Get-EventLog to retrieve EventID, TimeGenerated, and Source for the 25 oldest recorded errors in the Application log; export the results to an HTML file and test view in a browser
