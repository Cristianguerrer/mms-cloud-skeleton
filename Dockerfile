FROM node:alpine 

ADD package.json /app/package.json

WORKDIR /app

RUN yarn add vite

RUN yarn install

ADD . /app

RUN yarn build-only

FROM nginx:stable-alpine

COPY nginx.conf /etc/nginx/nginx.conf

COPY --from=0 /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
