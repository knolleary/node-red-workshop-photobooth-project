photobooth-workshop
===================

### About

This is your project's README.md file. It helps users understand what your
project does, how to use it and anything else they may need to know.

More information about this project can be found [here](https://knolleary.net/node-red-workshop-photobooth/index.html)

To build the project you need at least docker version 17.06, otherwise you'll end up with error [repository/tag: invalid reference format](https://stackoverflow.com/questions/48848020/dockerfile-is-not-a-valid-repository-tag-invalid-reference-format)

### Build the project

git clone https://github.com/knolleary/node-red-workshop-photobooth-project.git  
cd node-red-workshop-photobooth-project  
docker build -t noderedphotobooth .
docker run -it -p 1880:1880 noderedphotobooth

### Run the project
Open a browser and point to localhost:1880
