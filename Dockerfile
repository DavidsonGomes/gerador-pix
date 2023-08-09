FROM node:16.18-alpine

RUN apk update && apk upgrade && \
    apk add --no-cache git tzdata ffmpeg wget curl

WORKDIR /pix

COPY ./package.json .

RUN npm install

COPY . .

CMD [ "node", "./index.js" ]
