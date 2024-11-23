#### What is EC2?
It's your laptop in cloud.</br>
OS options avaialable are linux / windows / mac.
![image](https://github.com/user-attachments/assets/eb19ea27-0f26-46ee-ac64-5fc9cb5a44e0)

#### Shared respobsibility
Once you bought the laptop, what's AWS responsibility & what's your responsibility?
AWS resposibility:
1. Maintaining the host OS(Remember that the OS you ask is installed on top of this host OS.</br>
   That's why the laptop you bought is called as virtual machine).
2. Maintaining data center hardware
Your resposibility:
1. Maintaining OS(For example, installing updates).
2. Defining security(For example, firewall)
![image](https://github.com/user-attachments/assets/54a77cee-9c3e-47d8-a9cc-c87a1790fae1)

#### Everything is EC2 behind the scenes
- Relational Database Service(RDS) is nothing but, EC2 service with databases such as PostgreSQL / MySQL installed in it.
- Lambda service creates the server with your code inside an EC2 service.

#### Amazon Machine Image(AMI)
When you backup windows OS, what get's backed up is windows OS + your personal configuration + files.</br>
In short it's called as disk image, because whatever is present inside the disk gets backed up.</br>
Amazon Machine Image(AMI) also means the same, it's the OS + Amazon configuration.
![image](https://github.com/user-attachments/assets/5a0588af-4b1f-422b-aec1-96e6a764e6fb)

#### User data
It's the code runs immediatly as soon as the instance launched for the first time.</br>
Be aware that shutting down & restarting the instance won't run this code once again.</br>
So, what's the purpose of it?
This is how you can maintain same configuration when multilpe servers are launched by auto scaling group.
![image](https://github.com/user-attachments/assets/b6100035-8c9a-4df3-a801-0ea3f0bf3154)
