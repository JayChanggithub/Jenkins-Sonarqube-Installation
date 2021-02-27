FROM jenkins/jenkins:lts

USER root

RUN apt-get update \
    && apt-get install -y groovy vim libltdl7

EXPOSE 8080 50000
