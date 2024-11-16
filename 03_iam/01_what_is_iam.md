#### What is IAM service?
- iam also is an AWS service like any other AWS services.</br>
- iam means identity & access management.</br>
- The name itself is telling that this service is there to do 2 types of work.</br>
  1. `Identity`, means identifying the user.
  2. `Access management`, means providing/restricting access to identified user.
- In other terminology, we have different names for Identity & Access management.</br>
  Identity = Authentication</br>
  Access management = Authorization</br>
- The default user who will be created automatically behind the scenes, when you create AWS accout is root user.</br>
  ID & Password of the root user are same as the ID & Password, which are used for AWS account creation.

#### Types of Identity & Access management
- Identification is done through IAM user / IAM group / IAM role.
  ![image](https://github.com/user-attachments/assets/42a91296-90a3-4ef6-b3d6-d0fe7290716e)

- Access management is achieved through IAM policy.
  Policy is nothing but set of permissions.</br>
  ![image](https://github.com/user-attachments/assets/3d4a4453-ef54-4edc-a38d-b4fa390ddb70)
  <ins>Note</ins></br>
  Policy can be either attached to IAM user / IAM group / IAM role / resources like EC2, s3 bucket etc. 
  ![image](https://github.com/user-attachments/assets/b65133a0-1261-4dc8-9cbc-b2b6a86094fe)
