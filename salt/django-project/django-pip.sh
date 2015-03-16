#!/bin/bash
source "/opt/deploy/"$PROJECT_NAME"_app/bin/activate"
REQFILE="/opt/deploy/"$PROJECT_NAME"_app/"$PROJECT_NAME"/requirements.txt"
pip install -r $REQFILE 
