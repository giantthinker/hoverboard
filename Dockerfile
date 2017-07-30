FROM node

<<<<<<< HEAD
RUN npm i -g polymer-cli bower

RUN useradd -m node 

ADD . /app

USER node
WORKDIR /app 

RUN bower install

EXPOSE 8080
CMD polymer serve
=======
ADD . /app
RUN chown -R node:node /app

USER node
WORKDIR /app

EXPOSE 3000 3001
CMD npm install && npm run gulp -- serve
>>>>>>> upstream/master
