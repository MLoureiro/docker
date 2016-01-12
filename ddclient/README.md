# DDClient Docker


This is a simple Docker container for running the [DDclient](http://www.noip.com/) dynamic DNS update.

Usage
-----

This docker image is available in the [docker index](https://index.docker.io/u/mloureiro/ddclient/).

Run:

`$ sudo docker run --name=ddclient -d -v /config/dir/path:/config mloureiro/ddclient`

When run for the first time, a file named *ddclient.conf* will be created in the config dir, and the container will exit. Edit this file, changing the required parameters. Then rerun the command (or run `$ sudo docker start ddclient`).

To check the status, run `docker logs ddclient`.

You can also find configuration for several popular clients (such as NoIP, DynDNS, Dynu, ...) in [ubuntu help](https://help.ubuntu.com/community/DynamicDNS#Registering_with_a_Dynamic_DNS_provider)
