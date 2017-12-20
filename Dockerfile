FROM node:6.12.0
MAINTAINER Marcio Rabelo <marcio@modular.network>

# Create workdir
WORKDIR "/app"

# Add project to app directory
ADD . .

# Build process
RUN cd services/sockets && \
    npm install && \
    npm set progress=false

CMD ["npm", "start"]
