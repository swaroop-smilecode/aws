- CIDR block defines the size of VPC.
- Size of VPC is defined in terms of IP addresses range.
- For easy calculations, IP addresses range is defined through a term named netmask(`/16 to /28`),</br>
  instead of telling that the VPC has the IP addresses range from 180.160.140.120 to 180.160.140.130</br>
  for example; /16 netmask means total number of unique IP addresses that can be allocated to servers present inside that VPC are 16,536.
  in the same way; /17 means 32,768 & /18 means 16,384..... /28 means 16.
  16 IP addresses is the smallest VPC network that is available.
  <ins>Note:</ins></br>
  aws reserves 5 IP addresses for internal use. First 4 IP's & the last IP of the CIDR block are reserved for aws.
