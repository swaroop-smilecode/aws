lambda can be invoked by
1. AWS CLI
2. AWS SDK(In case of python the name of library is `boto3`)
3. AWS services

![image](https://github.com/user-attachments/assets/0a5e7c11-6783-4c63-bb46-0891af30971f)

In all the above ways, lambda can invoke in 2 ways.</br>
<ins>Synchronous invocation</ins></br>
This way of invocation is made when the application initiating the request to lambda, depends on the response to progress further.
![image](https://github.com/user-attachments/assets/f6d4bc3a-c7c4-4b25-82e4-74b744b01eb7)

<ins>Asynchronous invocation</ins></br>
- This way of invocation is made when the client initiating request to lambda,</br>
  has no need to wait for the response to progress further. Examples are `batch operations`, `order_processing`, etc.</br>
- The response from lambda will be just `status code: 202`, indicating that lambda received your request.
- Very important thing to remember here is, queue is part of lambda, no need to create explicitly.

![image](https://github.com/user-attachments/assets/693532d5-07d7-4426-bb91-c29ee6448b7d)
