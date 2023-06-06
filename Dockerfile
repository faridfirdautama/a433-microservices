# download base image of nodeJS
FROM node:14.21.3-bullseye

# create directory named app
WORKDIR /app

# copy from local to working directory
COPY . .

# to run app in production mode
ENV NODE_ENV=production DB_HOST=item-db

# install dependencies needed
RUN npm install --production --unsafe-perm && npm run build

# run server when the container launch
CMD ["npm", "start"]

# setup port
EXPOSE 8080