import pickle
import json
import numpy as np
import statistics

__model = None
__model1 = None
__model2 = None
__model3 = None
__data_columns = None

def prediction(current,humidity,temperature,flow,job_tem,voltage):
    labels = ['No Defect','Porosity','Tungsten Inclusion']
    x = []
    x.append(current),
    x.append(humidity),
    x.append(temperature),
    x.append(flow),
    x.append(job_tem),
    x.append(voltage)
    print(x)
    X = np.array(x)
    X = X.reshape(1,-1)
    model_predict =  __model.predict(X)[0]
    # model1_predict =  __model1.predict(X)[0]
    # model2_predict = __model2.predict(X)[0]
    # model3_predict = __model3.predict(X)[0]
    # final_prediction = statistics.mode([model1_predict,model2_predict,model3_predict])
    # output = labels[final_prediction]
    final_prediction = model_predict
    output = labels[final_prediction]
    print(output)
    return output

def load_saved_artifacts():
    print("_____loadng saved artifacts")
    global __model
    global __model1
    global __model2
    global __model3
    global __data_columns

    with open("/Volumes/Project/apps/web apps/IIT Bombay/server/artifacts/columns_data.json") as f:
        __data_columns = json.load(f)['data_columns']
        
    with open("/Volumes/Project/apps/web apps/IIT Bombay/server/artifacts/wel_right_RandomForest.pickle",'rb') as f:
        __model1 = pickle.load(f)
    
    with open("/Volumes/Project/apps/web apps/IIT Bombay/server/artifacts/wel_right_KNN.pickle",'rb') as f:
        __model2 = pickle.load(f)

    with open("/Volumes/Project/apps/web apps/IIT Bombay/server/artifacts/wel_right_Decision_Tree.pickle",'rb') as f:
        __model3 = pickle.load(f)

    with open("/Volumes/Project/apps/web apps/IIT Bombay/server/artifacts/weldright.pickle",'rb') as f:
        __model = pickle.load(f)

def get_data_columns():
    return __data_columns

if __name__ == '__main__':
    load_saved_artifacts()
    print(prediction(19.552332,74,25,0.003966,31.675962,4.934618))
    print(prediction(0.552332,0,25,89,31.675962,4.0))
    