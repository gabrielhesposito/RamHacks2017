FROM s390x/node:latest

WORKDIR /home/node

RUN wget https://github.com/lhartikk/naivechain/archive/master.zip

RUN apt-get update && apt-get install -y unzip && unzip -j maser.zip || echo "Nothing installed"

RUN npm install

CMD ["node", "main.js"]
