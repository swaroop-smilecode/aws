#### Scaling vs Load balancing
Scaling is increasing/decreasing the number of servers based on load.</br>
Load balancing is distrubuting the load evenly between the servers.</br>

#### AWS service named for Scaling vs Load balancing
In AWS, the name of the service that deals with scaling is `Auto scaling group` </br>
and then the name of service that deals with load balancing is `Load balancer`.</br>

#### Load balancer is attached to Auto scaling group
Like we said, Load balancer comes into picture when you increse/decrease the number of servers.</br>
Hence, a load balancer is attached to Auto scaling group.

#### HTTPS requests are handled by load balancer
Usually when you are setting up an web server(for example, apache), by default it only accepts HTTP requests &</br>
to make the server handle the HTTPS requests, there needs to be some work done such as configurting SSL certification.</br>
But, if you are using load balancer, then it converts HTTPS requests into HTTP requests so that you no need to do</br> 
configuration work.
