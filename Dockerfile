# to set the base image with name builder
FROM node:14.21-alpine as builder
# to set the working directory
WORKDIR /app
# to copy from package.json to working directory app
COPY package*.json ./
# command for install all dependencies
RUN npm install

COPY . .
# to set the port
EXPOSE 8000
CMD [ "npm", "run" ]