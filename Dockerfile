FROM ber4tbey/whatsowen:latest

RUN git clone https://github.com/Berathanyedibela/disowen /root/DisOwen/
WORKDIR /root/DisOwen/
COPY package*.json ./
RUN npm install 
RUN npm install supervisor -g
RUN yarn install --no-audit
RUN yarn add pg pg-hstore
COPY . .
CMD ["node", "bot.js"]






