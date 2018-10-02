FROM node:10-alpine

MAINTAINER Snyk Ltd

# Install snyk cli
RUN npm install --global snyk snyk-to-html && \
    apk update && \
    apk upgrade && \
    apk add --no-cache docker

RUN chmod -R a+wrx /home/node
WORKDIR /home/node
ENV HOME /home/node

ENV HOME /usr/bin/docker

# Default command is `snyk test`
# Override with `docker run ... snyk/snyk-cli <command> <args>`
CMD [""]
