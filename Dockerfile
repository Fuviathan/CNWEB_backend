FROM node:lts

WORKDIR /app

COPY . .

RUN npm i

RUN npm install node-pre-gyp

RUN npm rebuild bcrypt --build-from-source

EXPOSE 3000

CMD ["node", "index.js"]
