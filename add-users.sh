#!/bin/bash

JBOSS_HOME=/opt/jboss/wildfly
JBOSS_ADD_USER=$JBOSS_HOME/bin/add-user.sh

echo "==> Adding Users..."
$JBOSS_ADD_USER -s -u system -p manager -g admin
$JBOSS_ADD_USER -s -u scott -p tiger -g user -a

