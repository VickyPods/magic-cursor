FROM node:8

LABEL author="Alex Mubarakshin"

WORKDIR /application

COPY /package.json ./

RUN npm install

COPY /client ./client
COPY /server.js ./

ENV PORT 5000

CMD ["sh", "-c", "node server.js -p ${PORT}"]
