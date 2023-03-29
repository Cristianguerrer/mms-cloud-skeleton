FROM node:lts-alpine

WORKDIR /app

COPY package.json /app/package.json

RUN yarn add vite

RUN yarn install

COPY . /app

RUN yarn build

FROM nginx:stable-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=0 /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
