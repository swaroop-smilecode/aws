#### <ins>Step 1 :</ins> Lambda
- Create lambda named `greetings_application_lambda`
- Below is the code
```python
import json

def lambda_handler(event, context):
    # TODO implement
    return {
        'statusCode': 200,
        'body': json.dumps('Hai user, greetings from application!')
    }
```
#### <ins>Step 2 :</ins> API Gateway
Choose an API type : `REST API`</br>
API endpoint type : `Regional`</br>
Create resource : `/pleasetellmegreetings`</br>
Create method :</br>
Method type : `GET`</br>
Integration type : `lambda`</br>
Lambda function : `Choose the lambda fn which we created in step 1`</br>
Click on `Deploy` & you will receive the URL.</br>
At the end of URL, include resource name & completed URL looks like below. Hit & get response :)</br>
`https://6t70uwo3ca.execute-api.us-east-1.amazonaws.com/dev/pleasetellmegreetings`


