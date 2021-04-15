FROM node:15-alpine

WORKDIR /app/usr

COPY package*.json ./

RUN yarn install

COPY . .

CMD ["yarn", "run", "start"]