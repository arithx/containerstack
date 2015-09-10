if [ ! -e "/usr/bin/git" ]; then
    apt-get install -qqy git
fi

if [ ! -e "/usr/bin/docker" ]; then
    wget -qO- https://get.docker.com/ | sh
fi

if [ ! -e "/usr/local/bin/docker-compose"]; then
    curl -L https://github.com/docker/compose/releases/download/1.4.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
fi
