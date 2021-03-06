#!/usr/bin/env bash

sudo -u ec2-user -i <<'EOF'

# echo 'git config --global user.name "dascshu"' >> /home/ec2-user/.bashrc
# echo 'git config --global user.email dasc@shu.edu' >> /home/ec2-user/.bashrc
# echo 'git config pull.rebase false' >> /home/ec2-user/.bashrc
curl https://raw.githubusercontent.com/davashu/sagemaker-setup/main/bashconfig.sh >> /home/ec2-user/.bashrc

# This will affect only the Jupyter kernel called "conda_python3".
conda activate python3
pip install PyAthena
pip install psycopg2-binary
# You can also perform "conda install" here as well.
conda deactivate

# This will affect only the Jupyter kernel called "conda_python3".
conda activate pytorch_p38
pip install torchdata
conda deactivate

EOF
