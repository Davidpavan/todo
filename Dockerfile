FROM    node:stretch-slim
RUN     mkdir /app
WORKDIR /app
COPY    . /app
RUN     npm install
CMD     ["node", "server.js"] .