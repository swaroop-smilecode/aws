#### What is Elastic Beanstalk?
It's a Platform as a Service (PaaS)

#### Deployment policies
<ins>All at once deployment policy</ins></br>
- New code is deployed to all instances at the same time --> We know that server need to be restarted each time we do code changes.</br>
  --> Hence, the application is not available during the deployment time
  --> hence, not suitable for production environment.
- In case of deployment failure, all users get affected.

![image](https://github.com/user-attachments/assets/04e93cfd-460c-450b-95ba-c035fa61ce8c)

<ins>Rolling deployment policy</ins></br>
- New code is deployed in batches.
- You choose the batch size.
- Batch size is the number of instances to deploy in each batch.
- During deployment time, some users will experience latest code & while others experience old code.
- In case of deployment failure, all users won't get affected. For example, in the below case, users who are accessing the 2 instances
  where the new code is deployed only get affected.
- During deployment, there won't be any down time. Let's consider new code is getting deployed into 2 servers & they won't be available.
  At this point of time, load balancer will not forward the requests to these 2 servers, instead to other servers where the deployment is
  not happening.

![image](https://github.com/user-attachments/assets/9401b669-135d-4230-a104-b3a81274f5c5)

<ins>Rolling with an additional batch</ins></br>
- This is an improvement over the Rolling deployment policy. In Rolling deployment policy, we saw that certain number of servers(batch size)</br>
  will not be available for the end users during deployment time. This policy tries to overcome it.
- In this policy, 2 new servers(based on batch size) will be created with new code & they are first added to the running servers pool.</br>
  Then 2 old servers will be terminated. This process repeated until all the servers are deployed with new code.</br>
  But, becareful to increase the capacity of running servers pool by batch size.
- In case of deployment failure, the newly created servers will be terminated.

![image](https://github.com/user-attachments/assets/2bf09780-a95f-4381-a5c8-3dca99560236)

<ins>Immutable deployment policy</ins></br>
- Exisiting instances are not updated. Elastic Bean Stalk duplicates the current instances along with load balancer.</br>
  Then the old servers along with it's load balancer are terminated.</br>
  But, becareful to increase the capacity of running servers pool by running pool.
- No downtime.

![image](https://github.com/user-attachments/assets/d6d7c299-ebb3-4eb4-ac70-4075137aebca)

<ins>Traffic splitting deployment policy</ins></br>
- Suitable for A/B or Canary testing.
- Exisiting instances are not updated. Elastic Bean Stalk duplicates the current instances along with load balancer.</br>
- Only to 10% of end users are diverted to new infrastructure. If everything is fine, then remaining 90% are also diverted & at the end,
  old infrastructure is terminated.</br>
![image](https://github.com/user-attachments/assets/967ad412-8794-4e62-90f7-0b3c0af7aec0)


