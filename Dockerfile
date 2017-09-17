#docker run --name nodeserver -t -p 3001:3001 -d  nodeserver:latest
FROM s390x/node:latest

WORKDIR /home/node

RUN wget https://github.com/lhartikk/naivechain/archive/master.zip

RUN apt-get update && apt-get install -y unzip && unzip -j master.zip || echo "Nothing installed"
USER node

RUN npm install

CMD ["node", "main.js"]
EXPOSE 3001 6001
