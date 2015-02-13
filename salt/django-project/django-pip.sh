#!/bin/bash
source "/opt/deploy/"$PROJECTNAME"_app/bin/activate"
REQFILE="/opt/deploy/"$PROJECTNAME"_app/"$PROJECTNAME"/requirements.txt"
pip install -r $REQFILE 
