if [ cat /etc/*-release | egrep "DISTRIB_ID=(.*)" | sed "s/DISTRIB_ID=//g" = "CoreOS" ]; then
  if [ ! -e "/opt" ]; then
    mkdir /opt
  fi
  if [ ! -e "/opt/bin" ]; then
    mkdir /opt/bin
  fi
  if [ ! -e "/opt/bin/docker-compose" ]; then
    curl -L https://github.com/docker/compose/releases/download/1.4.0/docker-compose-`uname -s`-`uname -m` > /opt/bin/docker-compose
    chmod +x /opt/bin/docker-compose
  fi
else
  if [ ! -e "/usr/bin/git" ]; then
      apt-get install -qqy git
  fi

  if [ ! -e "/usr/bin/docker" ]; then
      wget -qO- https://get.docker.com/ | sh
  fi

  if [ ! -e "/usr/local/bin/docker-compose" ]; then
      curl -L https://github.com/docker/compose/releases/download/1.4.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
      chmod +x /usr/local/bin/docker-compose
  fi
fi

git clone https://github.com/arithx/containerstack
cd containerstack
docker-compose build --no-cache
