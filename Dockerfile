FROM node:10-alpine

ENV NODE_ENV production
ENV storage__active s3

RUN apk add --no-cache su-exec
RUN npm install ghost-cli -g

RUN mkdir /app; \
    chown node:node /app; \
    su-exec node ghost install --db=sqlite3 --no-prompt --no-stack --no-setup --dir /app;

RUN npm install ghost-storage-adapter-s3 --prefix /app/current/content/adapters/storage/s3; \
    mv /app/current/content/adapters/storage/s3/node_modules/ghost-storage-adapter-s3/* /app/current/content/adapters/storage/s3/

CMD ["node", "/app/current/index.js"]
