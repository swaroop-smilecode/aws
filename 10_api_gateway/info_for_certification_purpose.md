---------------------------------------------------------------------------------------------------------------------
### What is API Gateway?
This is an API service that allows you to create, publich, maintain, monitor & secure API.</br>
Let's understand through an example.</br> 
Suppose you have an application which is designed in micro services arcchitecture.</br>
![image](https://github.com/user-attachments/assets/732617ef-be98-4426-b68d-708b6dac0bb8)

For each API, dealing with things like Authorization, Rate limiting e.t.c. is a big work</br>
Why not outsourse this work to API gateway? That's exactly what API gateway is.</br>
![image](https://github.com/user-attachments/assets/0121a239-7879-413c-a61d-815563ec4526)

Usually, API gateway is something widely used along with lambda in the below way.</br>
Suppose you wrote python backend logic using Flask framework & created an endpoint.</br>
Then, you hosted that code inside an lambda function.</br>
Now, how would that end point could be hit by the react front end?</br>
1. You can directly attach domain name to lambda function.</br>
2. react application can directly invoke the lambda function through ARN of lambda,</br>
but that requires letting people to acccess your AWS account.</br>
Doesn't look good. isn't it? That's why you need API gateway.</br>
![image](https://github.com/user-attachments/assets/c020e3d5-d38e-417f-bf18-42a4818e45c8)

--------------------------------------------------------------------------------------------------------------------
#### Which type of application the API gateway is going to wrap?</br>
you can wrap 3 types of applications.</br>
1. REST API
2. HTTP API
3. WebSocket API

#### How can clients reach API gateway? There are 3 options provided</br>
1. Edge-optimized:</br>
   If your clients are distributed across the globe, then choose this option, because it will route the request</br>
   to the nearest server, through cloud front.</br> 
2. Regional:</br>
   Client requests are always routed to the same server in which the API gateway is deployed.</br>
3. Private:</br>
   API gateway can be accessed only within the VPC.
--------------------------------------------------------------------------------------------------------------------
