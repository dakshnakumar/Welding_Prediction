from flask import Flask, jsonify, request
import pandas as pd
import numpy as np
import joblib
import traceback
from flask_restful import reqparse
import utils


app = Flask(__name__)

@app.route('/heloo',methods=['GET','POST'])
def hello():
    return 'hiiiiii' 


@app.route("/get_predicted_output",methods=['GET','POST'])
def load_features():
  json = request.get_json()
  print("loading features.........")
  # print(json)
  current = np.array(json[0]['current'],dtype=float)
  humidity = np.array(json[0]['humidity'],dtype=float)
  temperature = np.array(json[0]['temperature'],dtype=float)
  flow = np.array(json[0]['flow'],dtype=float)
  job_tem = np.array(json[0]['job_temp'],dtype=float)
  voltage = np.array(json[0]['voltage'],dtype=float)
  response = jsonify({
    "output":utils.prediction(current,humidity,temperature,flow,job_tem,voltage)
  })
  response.headers.add("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept")

  return response


if __name__ == '__main__':
    utils.load_saved_artifacts()
    app.run(debug=True)
    
