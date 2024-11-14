#### Version
base code --> change the code & publish it as version 1 --> change the code of version 1 & publish it as version 2.</br>
Please note that, published version code can't be changed!</br>
#### Alias
It's just a name to version. But, it has an important use case.</br>
Suppose an external application is consuming the lambda function version 1.</br>
You upgraded the code & published it as version 2.</br>
URL of the lambda with respective new version changes.</br>
Hence, inside the external application, URL needs to be updated(1 needs to be changed to 2).</br>

But, if you alias the version 1 as new & then the URL of lambda function will have new instead of 1.</br>
So, now, if new version 2 is published, you can point the alias named new to 2.</br> 
In this case the external application has no need to change her code.
