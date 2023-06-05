# download base image of nodeJS
FROM node:14

# create directory named app
WORKDIR /app

# copy from local to working directory
COPY . .

# to run app in production mode
ENV NODE_ENV=production DB_HOST=item-db

# install dependencies needed
RUN npm install --production --unsafe-perm && npm run build

# setup port
EXPOSE 8080

# run server when the container launch
CMD ["npm", "start"]