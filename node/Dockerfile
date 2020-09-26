FROM node:12.18.4-alpine3.12
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
CMD npm run start:dev
