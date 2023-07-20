# to set the base image with name builder
FROM node:18-alpine

# to set the working directory
WORKDIR /app

# to copy from package.json to working directory app
COPY package*.json ./

# command for install all dependencies
RUN npm install

# to copy all local source code to app dir
COPY . .

# initiate command at conteiner start
CMD [ "node", "index.js" ]

# to set the port
EXPOSE 3001