if [ ! -e "/usr/bin/git" ]; then
    apt-get install -qqy git
fi

apt-get update
apt-get -qqy install git socat curl sudo vim wget net-tools git socat curl sudo vim wget net-tools libffi-dev libkrb5-dev libev-dev libvirt-dev libsqlite3-dev libxml2-dev libxslt-dev libpq-dev libssl-dev libyaml-dev make build-essential python-dev libffi-dev libssl-dev

git clone https://github.com/openstack-dev/devstack
devstack/tools/create-stack-user.sh
chown -R stack devstack
cd devstack
wget https://raw.github.com/arithx/containerstack/master/localrc
exec sudo -u stack ./stack.sh
