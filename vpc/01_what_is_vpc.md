#### What is VPC?
- VPC stands for `Virtual Private Cloud`.
- We know how aws interconnects data centers in a geographic region. So, when you are doing something in aws,</br>
  assume a single server is present in a geographic region. This makes thinking simple.</br>
- Let's consider you have node server inside which plant selling application(react) & postgres serever inside which</br>
  data is present.
- Since it's a plant selling website, any one from across the world should be able to hit the react application.</br>
  but, only react application can make request to postgres server, not any one else.
- How do you define such kind of virtual network boundaries? That's what VPC allows you to do</br>
  By defining such rules, part of the network inside an geographic region, virtually becoming your cloud(because you defined the rules).</br>
  Hence the name `Virtual Private Cloud`.
![image](https://github.com/user-attachments/assets/51544868-492a-462d-970d-5f0547407429)

#### Components of VPC
To fine grain your virtual private cloud, there are many components. They are
1. CIDR block
2. Subnets
3. Route table
4. DHCP options set
5. NAT devices
6. Network ACL's
7. Security groups
8. Different type of gateways
