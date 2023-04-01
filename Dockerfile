FROM node:16.19.1-slim

RUN groupadd user && useradd --create-home --home-dir /app -g user user

WORKDIR /app
ADD . /app
USER user

RUN yarn install
CMD yarn start