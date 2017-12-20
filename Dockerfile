FROM node:6.12.0
MAINTAINER Marcio Rabelo <marcio@modular.network>

# Create workdir
WORKDIR "/app"

# Build process
COPY package.json .
RUN npm install && \
    npm set progress=false

# Add project to app directory
ADD . .
CMD ["npm", "start"]
