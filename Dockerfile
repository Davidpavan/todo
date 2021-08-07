FROM    node:stetch-slim
RUN     mkdir /app
WORKDIR /app
COPY    . .
RUN     npm install
CMD     ["node", "server.js"]