#### What is concurrency?
- No of lambda functions that can run simultaniously over a period of time.</br>
  It is what determines the scalability of lambda function.</br>
- By default, 1000 lambda functions can be ran at a time(`at a time =concurrently`) per region.</br>
  You can reserve certain no of lambda instances for a function.</br>
  Since AWS keeps 100 lambda's for those which do not have any reservation, total available lambda instances</br>
  for reservation are only 900.
  ![image](https://github.com/user-attachments/assets/5b5c05ab-7210-4591-bb1b-813ce410017e)
#### Let's analyze an scenario
lambda A : 150 reserved</br> 
lambda B : 250 reserved</br>
So, unreserved will be 900 - 150 - 250 = 600</br>
Suppose, assume lambda A got 200 requests, remaining 50 won't be allocated from unreserved</br>
lambda A starts throttling
![image](https://github.com/user-attachments/assets/2c1a80eb-b302-484a-af69-8ab208a0410b)

<ins>Note</ins></br>
Actually, reserved concurrency is good, because it gives a possibility of democracy,</br> 
without which only one lambda which gets many requests may consume all the reservations.
