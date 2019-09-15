FROM node:12.10

WORKDIR /usr/src/genetic-startups

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]

# How to build image: docker build -t <repository>:<TAG> .
# > build image e.g.: docker build -t romenrg/genetic-startups-react-typescript:first-build .

# How to run docker iamge: docker run -p <HOST_PORT>:<CONTAINER_PORT> <repository>:<TAG>
# > docker run -p 3000:3000 romenrg/genetic-startups-react-typescript:first-build