FROM node:6.12.0
MAINTAINER Marcio Rabelo <marcio@modular.network>

# Create workdir
WORKDIR "/app"
VOLUME "/app"

# Add project to app directory
ADD ./app .

# Build process
RUN cd services/sockets && \
    npm install && \
    npm set progress=false