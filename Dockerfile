FROM node:alpine

WORKDIR /code

RUN npm install -g nodemon

ADD package.json /code/
RUN npm install
ADD . /code/

CMD ["node", "app.js"]
