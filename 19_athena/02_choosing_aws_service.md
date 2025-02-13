What kind of the data you are going to process?</br>
- If it's an image(which means an object) --> s3 service / Dynamo DB(No SQL DB)</br>
- If it's tabular form of data --> Then think, for what purpose you want to use this data? OLTP / OLAP?</br>
  OLTP --> PostgreSQL DB spinned up using RDS.</br>
  OLAP --> Redshift / Snow flake.
- You have decided to store the data either in s3 / Dynamo DB(No SQL DB) / PostgreSQL / Redshift / Snow flake.</br>
  Now, it's query the data. Again you have to think. Does i need to query frequently / not?</br>
  If it's not, then `Athena`.
![image](https://github.com/user-attachments/assets/a9fa3bfe-d3ba-43d0-ad0a-04f87a1d0f53)
