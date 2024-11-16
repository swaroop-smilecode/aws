#### What is data center?
Don't literally go by name here. Data center means, looks like it stores data. `NO`.</br>
A data center is bunch of servers.
![image](https://github.com/user-attachments/assets/3c417eb9-ed8a-4cf1-853a-70434a4b6955)

#### 
Usually, it's good to always run your application at 2/more data centers to achieve `high availability`.</br>
For better organization purpose, AWS logically grouped it's data centers into 3 categories.</br>
<ins>1. Availability Zone(AZ):</ins></br>
Availability zone is the term referred to bunch of data centers interconnected.</br>
- Usually, the data centers present within 60 miles are interconnected togeteher, which means, interconnection is</br> 
  within a geographic zone. Hence the word `Zone`</br> 
- And, why do you do such interconnection?</br> 
  So that if one datacenter don't work properly, you can quickly transfer the data to servers present in next data center</br>
  & the application is available always. Hence the word `Available`.

![image](https://github.com/user-attachments/assets/bf75b836-01b2-4b0b-9e58-fbc63ba328c6)

<ins>2. Region:</ins></br>
What if whole data center collapases?</br>
That's where the region logical group saves you.</br>
![image](https://github.com/user-attachments/assets/9a1b7303-730a-4264-bef8-fb0976943365)

<ins>2. Edge server/Point of presence:</ins></br>
Let's consider the main server of your application is presnet in california.</br>
& people from phillipines request particular data mostly.</br>
Then, the data is cached at servers present near philippines, for faster service.</br>
Those servers present in philippines are called as Edge servers/Point of presence.</br>
![image](https://github.com/user-attachments/assets/df5e056d-7aff-47c4-901f-b51c1d1a3fcb)


