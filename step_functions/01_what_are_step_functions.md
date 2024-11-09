### Limitations of lambda function
In order to understand why step functions are needed, we need to understand the limitations of lambda function</br>
You should never keep all the application code inside lambda. They are meant to do a piece of work.</br>
Ofcourse you can overcome this limitation by chaining lambdas, but this is also not viable option</br>
because, lambda's are state less means, once they are shutdown after their work gets completed, no data related to</br>
the activity is maintained.
![image](https://github.com/user-attachments/assets/d37097ed-14e1-4919-a48a-23998f3d7f37)

Here comes the step functions. They are workflow's.</br>
There are 2 types of workflows.</br>
1. Standard workflow(Maximum duration is 1 year).</br>
2. Express workflow.</br>
