FROM node:14

RUN apt-get update && apt-get install -y curl gnupg
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn

RUN git clone https://github.com/Loki-Xer/Jarvis-md /root/Jarvis-md/
WORKDIR /root/Jarvis-md/

RUN yarn install --network-concurrency 1

CMD ["npm", "start"]
