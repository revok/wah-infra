FROM node:14.16.0

ARG PORT
ARG SOURCE_PATH

# set working directory
WORKDIR /usr/src/app

# Install app dependencies
COPY $SOURCE_PATH/package*.json ./

# TODO: stop running as root and remove this unsafe perm flag
RUN npm install --unsafe-perm

# add `/app/node_modules/.bin` to $PATH
ENV PATH /usr/src/app/node_modules/.bin:$PATH

# expose port
EXPOSE $PORT
