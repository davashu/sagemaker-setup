#!/usr/bin/env bash

sudo -u ec2-user -i <<'EOF'

echo 'git config --global user.name "dascshu"' >> /home/ec2-user/.bashrc
echo 'git config --global user.email dasc@shu.edu' >> /home/ec2-user/.bashrc

EOF
