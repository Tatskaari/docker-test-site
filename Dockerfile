FROM node:latest
RUN mkdir www
ADD index.js www/index.js
ADD node_modules www/node_modules
CMD cd www && nodejs index.js
