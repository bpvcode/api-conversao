FROM node:14.16.1-alpine3.13
#Based on node oficial image

WORKDIR /app
#Define the work directory

COPY package*.json ./
#Will copy both package.json and package-lock.json (cache benefit)

RUN npm install
#Install dependencies

COPY . .
#Copy all files from project to image

EXPOSE 8080
#Port 8080

CMD ["node", "index.js"]
#When initialize the container, run this command