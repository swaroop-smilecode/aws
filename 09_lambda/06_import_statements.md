Suppose, let's consider a simple flask application code as shown below.
```python
from flask import Flask

app = Flask(__name__)

def prices():
    plant_prices = {
                    "rose" : 100,
                    "orchid" : 200,
                    "marigold" : 300
                }
    data = ""
    for plant, price in plant_prices.items():
        data += f"{plant} : {price} <br/>"
    return data

@app.route('/')
def home():
    return prices()

app.run()
```
In order to run the code successfully, `Flask` library is needed.</br>
But, by default, lambda only provides the core installation & AWS SDK to access lambda from outside the AWS.</br>
Flask is available in your local environment, since you ran `pip install Flask`, which you can't do in case of lambda.</br>
![image](https://github.com/user-attachments/assets/4245b2f4-e3bb-42e2-ab39-3822a3aa6a30)
So, what to do?</br>
`Install all the external dependencies in the same folder where your application code is present`.
