FROM node:8-slim

MAINTAINER Snyk Ltd

# Install snyk cli
RUN npm install --global snyk snyk-to-html && \
    apt-get update && \
    apt-get upgrade && \
    apt-get install -y jq && \
    apt-get docker

RUN chmod -R a+wrx /home/node
WORKDIR /home/node
ENV HOME /home/node

# Default command is `snyk test`
# Override with `docker run ... snyk/snyk-cli <command> <args>`
CMD [""]
