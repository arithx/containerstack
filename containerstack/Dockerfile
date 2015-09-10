FROM ubuntu:trusty
MAINTAINER Stephen Lowrie "stephen.lowrie@rackspace.com"

RUN apt-get update
RUN apt-get -qqy install git socat curl sudo vim wget net-tools git socat curl sudo vim wget net-tools libffi-dev libkrb5-dev libev-dev libvirt-dev libsqlite3-dev libxml2-dev libxslt-dev libpq-dev libssl-dev libyaml-dev make build-essential python-dev libffi-dev libssl-dev

RUN wget -O- https://github.com/openstack-dev/devstack/tools/create-stack-user.sh | sh
RUN su stack
RUN cd
RUN git clone https://git.openstack.org/openstack-dev/devstack
RUN cd devstack
RUN wget https://github.com/arithx/containerstack/localrc
RUN ./stack.sh
