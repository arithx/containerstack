FROM ubuntu:trusty
MAINTAINER Stephen Lowrie "stephen.lowrie@rackspace.com"

EXPOSE 80 5000 8773 8774 8776 9292 3306

RUN apt-get update
RUN apt-get -qqy install git socat curl sudo vim wget net-tools git socat curl sudo vim wget net-tools libffi-dev libkrb5-dev libev-dev libvirt-dev libsqlite3-dev libxml2-dev libxslt-dev libpq-dev libssl-dev libyaml-dev make build-essential python-dev libffi-dev libssl-dev

RUN echo 'mysql-server mysql-server/root_password password password' | debconf-set-selections; \
    echo 'mysql-server mysql-server/root_password_again password password' | debconf-set-selections; \
    apt-get -qqy install mysql-server

RUN sed -i.bak s/bind-address/#bind-address/g /etc/mysql/my.cnf

CMD sudo service mysql start

RUN sudo mysql -uroot -ppassword -h127.0.0.1 -P3306 -e 'GRANT ALL PRIVILEGES ON *.* TO '\''root'\''@'\''%'\'' identified by '\''password'\'';'

#RUN git clone https://github.com/arithx/ds-test devstack
#RUN devstack/tools/create-stack-user.sh
#RUN chown -R stack devstack
#WORKDIR devstack
#USER stack
#RUN wget https://raw.github.com/arithx/containerstack/master/localrc
#RUN ./stack.sh
