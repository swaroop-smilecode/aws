#### What is Policy?
- Policy is written in JSON syntax.
- It has 2 blocks.
  ![image](https://github.com/user-attachments/assets/27e22449-5a1c-47ea-99f4-eca2d74beb0d)
- Let's see meaning of each attribute.</br>
  ID = name of the policy.</br>
  version = AWS policy language version.</br>
  Sid = name of the statement.</br>
  Effect = Allow/Deny.</br>
  Principal = did not understood.</br>
  Action = List of API's(exposed by an AWS service) that the policy allows/denies.</br>
           If you want to allows all actions related to dynamo db, then `"dynamodb:*"`
           If you want to allows all actions related to s3, then `"s3:*"`
  Resource = did not understood.</br>
  Condition = did not understood.</br>
#### Policy evaluation logic
![image](https://github.com/user-attachments/assets/d0a64230-7329-439b-873e-6d1ea09e3ec5)

 
