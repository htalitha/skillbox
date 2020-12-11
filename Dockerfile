FROM node

RUN mkdir /skillbox_flatris
WORKDIR /skillbox_flatris
COPY ./flatris/package.json /skillbox_flatris
RUN yarn install

COPY ./flatris /skillbox_flatris
RUN yarn test
RUN yarn build

CMD yarn start

EXPOSE 3000
