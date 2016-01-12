#!/bin/bash

DEFAULT_CONF_PATH=/root/ddclient/ddclient.conf
CUSTOM_CONF_PATH=/config/ddclient.conf

# Search for custom config file, if it doesn't exist, copy the default one
if [ ! -f $CUSTOM_CONF_PATH ]; then
  echo "Creating config file. Please do not forget to enter your info in ddclient.conf."
  cp $DEFAULT_CONF_PATH $CUSTOM_CONF_PATH
  chmod a+w $CUSTOM_CONF_PATH
  exit 1
fi

# Verify if the configuration file was changed or not
if [[ `diff $DEFAULT_CONF_PATH $CUSTOM_CONF_PATH` == "" ]]; then
  echo "Please update the config file with your required data"
  exit 1
fi

# Make sym link to the ddclient.conf file
if [[ -h /etc/ddclient.conf ]]; then 
  # do nothing
else
  rm /etc/ddclient.conf
  ln -s $CUSTOM_CONF_PATH /etc/ddclient.conf
fi
