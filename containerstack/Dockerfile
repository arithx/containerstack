FROM ubuntu:trusty
MAINTAINER Stephen Lowrie "stephen.lowrie@rackspace.com"

RUN apt-get update
RUN apt-get -qqy install git socat curl sudo vim wget net-tools git socat curl sudo vim wget net-tools libffi-dev libkrb5-dev libev-dev libvirt-dev libsqlite3-dev libxml2-dev libxslt-dev libpq-dev libssl-dev libyaml-dev make build-essential python-dev libffi-dev libssl-dev

RUN git clone https://git.openstack.org/openstack-dev/devstack
WORKDIR devstack
RUN tools/create-stack-user.sh
USER stack
RUN wget https://raw.github.com/arithx/containerstack/master/localrc
RUN ./stack.sh
