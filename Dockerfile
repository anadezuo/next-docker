FROM node:18 AS build

COPY src /app/src
COPY public /app/public

COPY jsconfig.json /app
COPY next.config.mjs /app
COPY package.json /app
COPY postcss.config.mjs /app
COPY tailwind.config.js /app

WORKDIR /app

RUN npm install
RUN npm run build


WORKDIR /app

EXPOSE 3000

CMD ["npm", "start"]
