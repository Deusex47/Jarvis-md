FROM quay.io/loki-xer/jarvis-md:latest
FROM node:14

RUN git clone https://github.com/Loki-Xer/Jarvis-md /root/Jarvis-md/
WORKDIR /root/Jarvis-md/

# yarn'ı yükleyin
RUN npm install -g yarn

# Bağımlılıkları yükleyin
RUN yarn install --network-concurrency 1

CMD ["npm", "start"]
