FROM phusion/baseimage:0.9.17
MAINTAINER bas@vwn.io

#########################################
##        ENVIRONMENTAL CONFIG         ##
#########################################
# Set correct environment variables
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

# Use baseimage-docker's init system
#CMD ["/sbin/my_init"]
ENTRYPOINT ["/sbin/my_init"]

RUN locale-gen $LANG

RUN apt-get -q update \
	&& \
    apt-get -y autoremove

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
