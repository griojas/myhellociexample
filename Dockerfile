FROM node:carbon

WORKDIR /usr/src

COPY package.json /usr/src/package.json

COPY package-lock.json /usr/src/package-lock.json

COPY app.js /usr/src/app.js

RUN npm install

EXPOSE 3000

CMD ["node", "app.js"]