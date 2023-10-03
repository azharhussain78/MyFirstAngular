FROM node:latest as node


WORKDIR /app

COPY . .

RUN npm install

FROM nginx:alpine

COPY --from=node /app/dist/my-first-angular /usr/share/nginx/html