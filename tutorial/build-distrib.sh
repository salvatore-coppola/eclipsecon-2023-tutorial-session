#!/bin/bash

# create images
echo "Creating images.."
docker build -t tensorflow-notebook_eclipsecon2023:2023-09-11 -f DOCKERFILE-JUPYTER-NOTEBOOK .
docker build -t tritonserver_eclipsecon2023:23.08-tf2-python-py3 -f DOCKERFILE-TRITON .
docker build -t kura_eclipsecon2023:5.3.1-alpine-x86_64 -f DOCKERFILE-KURA .
echo "Images created"

echo "Removing old archives"
rm -f ./*.tar.gz
echo "Creating archives. It can take a while.."
#create archives
echo "Creating tensorflow-notebook"
#docker save tensorflow-notebook_eclipsecon2023:2023-09-11 | gzip > tensorflow-notebook_eclipsecon2023-2023-09-11.tar.gz
echo "Created tensorflow-notebook"
echo "Creating tritonserver"
#docker save tritonserver_eclipsecon2023:23.08-tf2-python-py3 | gzip > tritonserver_eclipsecon2023-23.08-tf2-python-py3.tar.gz
echo "Created tritonserver"
echo "Creating kura"
#docker save kura_eclipsecon2023:5.3.1-alpine-x86_64 | gzip > kura_eclipsecon2023-5.3.1-alpine-x86_64.tar.gz
echo "Created kura"

if [ ! -d ../distrib/ ]; then
  #create distrib dir
  mkdir ../distrib/
else 
  #clean distrib
  rm -rf ../distrib/*
fi

#create triton models dir
mkdir ../distrib/triton-models

echo "Copying resources to distrib folder"

#move resources
mv *.tar.gz ../distrib
cp docker-compose.yml ../distrib/docker-compose.yml

cp setup.md ../distrib/setup.md
cp tutorial.md ../distrib/tutorial.md
cp -R imgs ../distrib

echo "Done."
