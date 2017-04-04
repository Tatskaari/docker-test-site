FROM node:latest
RUN git clone https://github.com/Tatskaari/docker-test-site.git
RUN cd docker-test-site && npm install
CMD cd docker-test-site && nodejs index.js
