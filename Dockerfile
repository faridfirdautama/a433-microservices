# to set the base image
FROM node:14.21-alpine

# to set the working directory
WORKDIR /app

# to copy from package.json to working directory app
COPY package*.json ./

# command for install all dependencies
RUN npm install

# to copy all local source code to app dir
COPY . .

# initiate command at start container
CMD ["npm" , "start"]

# to set the port
EXPOSE 3000