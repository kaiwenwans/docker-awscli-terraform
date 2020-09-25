#!/bin/bash

yum install -y unzip wget
mkdir workdir
cd workdir
terraform_version=${1:-`curl -s https://api.github.com/repos/hashicorp/terraform/releases/latest | grep tag_name | cut -d: -f2 | tr -d \"\,\v | awk '{$1=$1};1'`}
wget https://releases.hashicorp.com/terraform/${terraform_version}/terraform_${terraform_version}_linux_amd64.zip
unzip terraform_${terraform_version}_linux_amd64.zip
mv terraform /usr/local/bin/
rm -rf ../workdir