#!/bin/bash

apphost1=`cat apphost1`
apphost2=`cat apphost2`
sed -i "s/${apphost1}/apphost1/g" files/balancer.conf
sed -i "s/${apphost2}/apphost2/g" files/balancer.conf

