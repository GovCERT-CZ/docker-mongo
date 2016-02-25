FROM ubuntu:trusty
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y dist-upgrade && \\
        apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927 && \\
        echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list && \\
        groupadd -r mongodb && \\
        useradd -r -g mongodb mongodb && \\
        apt-get update && \\
        apt-get install -y mongodb-org && \\
        mkdir -p /data/db && \\
        chown -R mongodb:mongodb /data/db && \\
        chmod +x /entrypoint.sh
EXPOSE 27017
ENTRYPOINT ["/entrypoint.sh"]
