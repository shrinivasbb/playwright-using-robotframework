import yaml
import json
import os



def read_yaml_Data(file,element):
    basedir = os.path.abspath(os.path.dirname(__file__))
    file = f'{basedir}/../testdata/{file}'
    with open(file,"r") as f:
        data = yaml.safe_load(f)
    return data[element]   

def read_json_Data(file,element):
    basedir = os.path.abspath(os.path.dirname(__file__))
    file = f'{basedir}/../testdata/{file}'
    with open(file,"r") as f:
        data = json.load(f)
    return data[element] 