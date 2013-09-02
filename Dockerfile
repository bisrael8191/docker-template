# Creates an empty ubuntu container with all system packages updated to the latest
#
# VERSION 1.0

# Base image
FROM ubuntu

# Dockerfile creation date, change to re-run all commands and update the image
ENV DOCKERFILE_DATE 2013-09-02

MAINTAINER Brad Israel

# Update the base image
RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# Command to run
CMD ["/bin/bash"]