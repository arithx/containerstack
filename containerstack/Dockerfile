FROM ubuntu:trusty
MAINTAINER Stephen Lowrie "stephen.lowrie@rackspace.com"

EXPOSE 80 5000 8773 8774 8776 9292

RUN apt-get update
RUN apt-get -qqy install git socat curl sudo vim wget net-tools git socat curl sudo vim wget net-tools libffi-dev libkrb5-dev libev-dev libvirt-dev libsqlite3-dev libxml2-dev libxslt-dev libpq-dev libssl-dev libyaml-dev make build-essential python-dev libffi-dev libssl-dev

RUN git clone https://git.openstack.org/openstack-dev/devstack
RUN devstack/tools/create-stack-user.sh
RUN chown -R stack devstack
WORKDIR devstack
USER stack
RUN wget https://raw.github.com/arithx/containerstack/master/localrc
RUN ./stack.sh
