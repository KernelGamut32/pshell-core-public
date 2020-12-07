# Exercise 3

In an interactive PowerShell session, complete the following:

* Retrieve detail about the services installed on your machine; use Select-Object to limit returned fields to Name and DisplayName (format output label to read "Display Name"), use Sort-Object to sort the results by DisplayName, and only return the first 10 items in the collection
* Get the list of running services on your machine
* List all running processes on your machine in order of highest CPU usage to lowest
* Display only the five top processes based on virtual memory (VM) usage
* Retrieve the process name and CPU value for the process consuming the most CPU (at execution time)
* Display the newest 100 entries from the Application event log; display values for more columns than the set that is displayed by default (e.g. when the event was generated, ID of the event, etc.) and order by timestamp in descending order (so most recent appears first); use alternative label names for each column to improve readability
