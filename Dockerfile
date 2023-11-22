FROM node:alpine

WORKDIR /usr/app

COPY package.json /usr/app
COPY server.js /usr/app

# installs the current packages
RUN npm installs
EXPOSE 3000

# The below comman is what happens when you run the container
CMD ["node", "server.js"]
