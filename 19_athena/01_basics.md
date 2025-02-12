#### What is Athena?
It's an serverless interactive query builder, that is designed to run queries across tera/peta bytes of data residing in s3.

#### Prerequisite pipeline, before querying data from S3
![image](https://github.com/user-attachments/assets/5d3cf46c-d1f7-4500-8da2-28d0ea6ab7ff)

#### Step 1
Create s3 bucket named `demoathenatestingwithglue`.</br>
While creating bucket, just unckeck `Block Public Access settings for this bucket` & keep remaining options as it is.
#### Step 2
Upload `iris.csv` into the bucket.
#### Step 3(Create an role with necessary permissions & attach it to glue service)
- Go to IAM service.</br>
- Create Role.</br>
  Trusted entity type : `AWS service`</br>
  Service : `Glue`</br>
  Add permissions : `AdministratorAccess`(But, ideally you should only give permissions like s3 read, cloud watch etc.)</br>
  Role name : `glue_generic`</br>

  
