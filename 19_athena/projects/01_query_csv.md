![image](https://github.com/user-attachments/assets/76ec861f-60c8-4e76-9c46-a6ec53c92e95)

#### Step 1 : Creating s3 bucket
Bucket name : `demoathenatestingwithglue`.</br>
While creating bucket, just unckeck `Block Public Access settings for this bucket` & keep remaining options as it is.
#### Step 2 : Uploading data into bucket
Upload `iris.csv` into the bucket. The .csv file is present inside the `data` folder.
#### Step 3 : Create an role with necessary permissions. Will attach it to glue crawler later.
- Go to IAM service.</br>
- Create Role.</br>
  Trusted entity type : `AWS service`</br>
  Service : `Glue`</br>
  Add permissions : `AdministratorAccess`(But, ideally you should only give permissions like s3 read, cloud watch etc.)</br>
  Role name : `glue_generic`</br>
#### Step 4 : Create glue crawler
- Go to Glue service(Whcih is nothing but the serverless ETL tool).
- Data catalog --> Crawlers --> Create crawler
- Set crawler properties:
  Name : `glue_crawler_generic`</br>
- Choose data sources and classifiers:
  Data sources : `S3`</br>
  S3 path : `s3://demoathenatestingwithglue`</br>
  Select radio button `Crawl all sub-folders`</br>
- Configure security settings:
  IAM role : `glue_generic`
- Output configuration:
  Target database --> Create a database named `generic_database` & select it.
- Set output and scheduling:
  Crawler schedule : `On demand`
#### Step 5 : Run the crawler
#### Step 6 : Check the results
- Go to Glue service(Whcih is nothing but the serverless ETL tool).
- Data catalog --> Databases --> Click on `generic_database` --> There will be a table named `demoathenatestingwithglue`
#### Step 7 : Let's go to Athena
- Data</br>
  Data source : AwsDataCatalog</br>
  Database : generic_database</br>
  Tables : demoathenatestingwithglue
- Whatever query you are running in Athena, the result set will be stored in s3 location.
  So, let's create an s3 bucket with name `athena-result-set-generic` & choose it to store the data.
- Run the below query
  ```python
  SELECT * FROM demoathenatestingwithglue
  LIMIT 10
  ```
- Same results will be stored inside the s3 bucket named `athena-result-set-generic` as .csv file
  
