FROM node:alpine

ADD package.json /app/package.json

WORKDIR /app

RUN yarn add vite

# Installing packages11
RUN yarn install

ADD . /app

# Building TypeScript files
RUN yarn build-only

EXPOSE 3000

CMD [ "yarn", "preview" ]
