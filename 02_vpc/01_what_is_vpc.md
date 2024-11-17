#### <ins>What is VPC?</ins>
- VPC stands for `Virtual Private Cloud`.
- It's your own network in an geographic region. In an geographic region, many people will setup their infrastructure.</br>
  how will you separate your infrastrcuture from others? Through VPC. It's like a boundary wall around your infrastructure.</br>
- Atleast one VPC is needed, because that's how your infrastructure can be isolated from other others.

![image](https://github.com/user-attachments/assets/f56a50e1-425a-434c-a7cf-c4e3c5085237)
#### <ins>Components of VPC</ins>
#### CIDR Block
- CIDR block defines the size of VPC.
  ![image](https://github.com/user-attachments/assets/04df3c52-a119-4b60-b555-0a511b4d25b0)
- Size of VPC is defined in terms of IP addresses range.
- <ins>Example:</ins></br>
  Let's consider an CIDR block `192.168.0.1/24`. It means,
  ![image](https://github.com/user-attachments/assets/62cbd2d3-da42-4739-97d5-86c0cc144749)
  So, how many different IP addresses can be obtained when you have 2 choices/place & in total, there are 8 places?</br>
  It's `2*2*2*2*2*2*2*2 = 256 IP addresses`.
  ![image](https://github.com/user-attachments/assets/bc4570f0-f935-4f1e-8fba-5472eacd34ca)
  In the same way, will see what different subnet's /32, /24, /16, /8, /0 means for IP 192.168.0.0.
  ![image](https://github.com/user-attachments/assets/7510c729-4e33-47d0-9461-9f74f52443fa)

#### Subnet's
VPC = your own network in an geographic region.</br>
Subnet = your own network inside availability zone.</br>
Inside the subnet, will place our servers.</br>
![image](https://github.com/user-attachments/assets/ab8ae276-400c-4b32-ab1e-0a0ebf799888)

#### Internet gateway
How would an end user enter your VPC? Through `Internet Gateway`</br>
![image](https://github.com/user-attachments/assets/5736fae1-bfd9-4b37-808e-7f3c0a281ca0)

#### Route table
- Once end user enters into VPC through internet gateway, where to divert him? To EC2 instance? To RDS instance ? </br>
  This divertion is done through route table.
- Route table is associated with subnet. Subnet must have a route table.
![image](https://github.com/user-attachments/assets/de87d532-8753-41cf-b749-8dd7a13903bc)

#### NACL(Network Access Security Group) & Security Group
Ok, as far as every thing is good.</br>
How would you block certain end users? At subnet level, through `NACL` & at instance level, through `Security group`.
![image](https://github.com/user-attachments/assets/0a316da8-81b4-485f-8dc5-d160a2a1d310)
