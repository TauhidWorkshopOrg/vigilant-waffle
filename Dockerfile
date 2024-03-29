FROM node:18.0.0

LABEL org.opencontainers.image.title="Sample container"

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY ./package.json /usr/src/app/
RUN npm install -g npm@8.10.0
RUN npm install

# Bundle app source
COPY ./src /usr/src/app

CMD [ "npm", "start" ]
