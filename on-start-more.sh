#!/usr/bin/env bash

sudo -u ec2-user -i <<'EOF'

echo 'git config --global user.name "dascshu"' >> /home/ec2-user/.bashrc
echo 'git config --global user.email dasc@shu.edu' >> /home/ec2-user/.bashrc

# This seems to slow down start-up a lot:
# 
# Note that "base" is special environment name, include it there as well.
# for env in base /home/ec2-user/anaconda3/envs/*; do
#     source /home/ec2-user/anaconda3/bin/activate $(basename "$env")
# 
#     # Installing packages in the Jupyter system environment can affect stability of your SageMaker
#     # Notebook Instance.  You can remove this check if you'd like to install Jupyter extensions, etc.
#     if [ $env = 'JupyterSystemEnv' ]; then
#       continue
#     fi

#     # Replace myPackage with the name of the package you want to install.
#     # pip install --upgrade --quiet myPackage
#     pip install --upgrade --quiet PyAthena
#     # You can also perform "conda install" here as well.
# 
#     source /home/ec2-user/anaconda3/bin/deactivate
# done

EOF
