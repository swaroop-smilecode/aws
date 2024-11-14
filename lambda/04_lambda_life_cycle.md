When you invoke an lambda function, it under goes 3 phases.
![image](https://github.com/user-attachments/assets/3e025696-810f-4844-88c4-b04aa6f54185)

#### INIT Phase
- Occurs when an lambda is invoked for the first time/after a long period of inactivity.</br>
- During this phase, a computer(server) is started with amount of RAM you requested when defining lambda function</br> 
  & environment(libraries, environment variables) is setup to execute your code.</br>
- The lambda code you wrote is downloaded from s3 bucket into the server created just before(Just to let you know,</br>
  when you are writing the code inside lambda, it's stored in s3 bucket behind the scenes).
- Initialization code(any code that is written outside the handler function) is run.</br>
  ![image](https://github.com/user-attachments/assets/57520982-1a20-4e89-9ec0-370263b09242)
- The time taken by the INIT phase is the cold start time.</br>
  You dont need to pay for the cold start period. However, if the INIT phase crosses `10 sec`,</br>
  then you will be charged even for the cold start time.</br>
  So, one way to reduce the cold start time is to minimize the initialization code.</br>
#### INVOKE Phase
- This is the phase in which, handler function starts.
  ![image](https://github.com/user-attachments/assets/75dab1ad-e139-4a04-a98e-0f0599de1e9e)
- Once the handler function completes the execution, still the server is kept alive for sometime</br>
  anticipating some more requests. If any new requests come during this time, then they no need</br>
  to go through the cold start period once again.
  ![image](https://github.com/user-attachments/assets/feeb3686-bb33-4d2d-af55-eb003ca369d1)
#### SHUTDOWN Phase
After waiting for sometime, if lamda doesn't get any request, it's shutdown.
  
#### <ins>Note 1</ins>
An temporary disk memory of 512 MB is allocated for lambda function. Here you can store things like</br>
images etc. which are needed for your logic.
![image](https://github.com/user-attachments/assets/5ee99d7e-f04d-43f6-9b13-f2ca2979e4a9)
#### <ins>Note 2</ins>
When i say dependencies, it's nothing but `our code is depending on the libraries we import into our code`.
![image](https://github.com/user-attachments/assets/8cd3d725-70f3-4049-bc51-ccad3fe0ef0e)


