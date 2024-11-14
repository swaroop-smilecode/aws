#### Version
- base code(which is the code you wrote for the first time inside the lambda) --> change the code & publish it as version 1 --> change the code of version 1 & 
  publish it as version 2.</br>
- Please note that, published version code can't be changed!</br>
#### Alias
- It's just a name to lambda version. But, it has an important use case.</br>
- Suppose an external application is consuming lambda function version 1.</br>
  Then the URL of lambda function looks like `wwww.speed.com/some_thing_1`.</br>
- Now, let's consider you have upgraded the code & published it as version 2.</br>
  URL of the lambda with respective new version will be `wwww.speed.com/some_thing_2`</br>
  Hence, inside the external application, URL needs to be updated(1 needs to be changed to 2).</br>
- But, if you alias the version 1 as new & then the URL of lambda function will be `wwww.speed.com/some_thing_new`</br>
  So, now, if new version 2 is published, you can point the alias new to 2.</br> 
  In this case, external application has no need to change her code.
