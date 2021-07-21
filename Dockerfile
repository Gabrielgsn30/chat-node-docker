FROM node:latest

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app


WORKDIR /home/node/app

COPY package*.json ./

RUN npm install

RUN npm install -g nodemon && \
npm install -s mongoose && \
npm install -s body-parser && \
npm install -s socket.io && \
npm install -s http

COPY . .

COPY --chown=node:node . .

USER node

EXPOSE 3000

CMD ["sh","start-node" ]