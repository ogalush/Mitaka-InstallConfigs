#!/bin/bash

set -x
sudo tar cvzf openstack-`hostname`.tar.gz /etc/{openstack-dashboard,keystone,nova,glance,neutron,apache2} \
 /etc/memcached.conf \
 /etc/mysql \
 /etc/network/interfaces \
 /etc/init/keystone.* \
 /home/ogalush/admin-openrc \
 /home/ogalush/demo-openrc \
 /home/ogalush/backupconfig.sh
sudo chown -v ogalush:ogalush openstack-`hostname`.tar.gz
set +x
