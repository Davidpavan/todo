FROM    node:stretch-slim
RUN     mkdir /app
WORKDIR /app
COPY    . .
RUN     npm install
CMD     ["node", "server.js"]