#### Which type of application the API gateway is going to wrap?</br>
you can wrap 3 types of applications.</br>
1. REST API
2. HTTP API
3. WebSocket API

#### How can clients reach API gateway? There are 3 options provided</br>
1. Edge-optimized:</br>
   If your clients are distributed across the globe, then choose this option, because it will route the request</br>
   to the nearest server, through cloud front.</br> 
2. Regional:</br>
   Client requests are always routed to the same server in which the API gateway is deployed.</br>
3. Private:</br>
   API gateway can be accessed only within the VPC.
