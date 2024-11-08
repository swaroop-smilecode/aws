Let's consider below table where wheather station data is stored for each day of the month.</br>
### Query
When you query the data, Cost is decided by number of `Read Capacity Units/sec(RCU)` & `Write Capacity Units(WCU)/sec`.</br>
`1RCU = 4 KB`, So, even if you read less than 4 KB, still charged for 4KB.
![image](https://github.com/user-attachments/assets/3668e711-9c71-49d9-afdc-eae3b17e8e23)
### Scan
Suppose you want to read item which has specific attribute(mentioned in yellow colour) from each row of the table,</br>
then query is not the option.</br>
Unlike the query, you will be charged for the whole table, irrespective of actual amount of data consumed.
![image](https://github.com/user-attachments/assets/422fbc8e-ee79-4b01-8a9d-f014c6e0f9af)
