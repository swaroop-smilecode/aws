- When you create a dynamo_db server, it's actually 3 servers created behind the scenes.</br>
  One server per availability zone</br>
- Among these `3` servers, one will be leader.
- AWS is going to take care of maintaining data consistency between all servers & how it's going to do that?</br>
  That's what we are going to see now.
- In below picture, for easy explanation, i have stored only `1 item` with `5 attributes`.
### Scenario of updating data
- Let's consider a scenario where an user `Bob` updated some data.</br>
- The data first gets updated on the leader node.</br>
  Once there are any changes in the leader node data, it's the duty of the leader node to update the data</br>
  on other nodes one by one. During this updation process, will freeze the time & analyze.
  ![image](https://github.com/user-attachments/assets/9809c907-8998-4c67-995e-4d88913ac514)
- There are 2 types of reads.
  1. Strongly consistent reads:</br>
     Read request is directed always to leader node & when there are more strongly consistent model read requsts</br>
     coming to dynamo_db server, then the leader node needs to be scaled & scaling a leader node is costly because</br>
     leader node duty is not only storing the data, but also writing data on other dynamo_db servers.
     If the application consists of `Medical Examination` details / `Stock information`, it's advisable to go</br>
     for this model even though it is costly.
  2. Eventually consistent reads.
  ![image](https://github.com/user-attachments/assets/1891ca50-b250-4a70-b2c3-0beb10aed48d)
### Read cost calculation
![image](https://github.com/user-attachments/assets/46d28df1-5412-4058-847b-f0fa03d7bced)
### Write cost calculation
![image](https://github.com/user-attachments/assets/76387ba3-d307-4f68-b8b3-93d65996efcc)
