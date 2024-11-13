import awsgi
from flask import Flask, jsonify

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
    return jsonify(prices())

def lambda_handler(event, context):
    return awsgi.response(app, event, context, base64_content_types={"image/png"})

app.run()