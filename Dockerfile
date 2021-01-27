FROM puppet/pdk:latest

LABEL maintainer="mySociety <sysadmin@mysociety.org>"

COPY  entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
