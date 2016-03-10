# docker-mongo

This is Docker image for mongodb 3.2.

Build docker image
    
    $ git clone https://github.com/GovCERT-CZ/docker-mongo
    $ cd docker-mongo/
    $ docker build -t <repository>/<name> .
    
Run docker container
    
    $ docker run [--name <container name>] [-d] -p 27017:27017 [-v <host path>:/data/db] <repository>/<name> [mongod args]
    
