#!/bin/bash 

echo "The JupyterHub startub script starts" 
#/bin/bash
PATH=$PATH:/usr/local/anaconda3/bin/
source /usr/local/anaconda3/etc/profile.d/conda.sh

echo "Sources are loaded"
#/usr/local/anaconda3/bin/conda deactivate
conda deactivate
echo "Previous conda virtual environment is deactivated"
#/usr/local/anaconda3/bin/conda activate xeus-cling
conda activate xeus-cling
echo "xeus-cling conda virtual environment is activated"
jupyterhub upgrade-db
echo "The jupyterHub database is upgraded"
echo "starting the server"
jupyterhub -f /srv/jupyterhub_config/jupyterhub_config.py

