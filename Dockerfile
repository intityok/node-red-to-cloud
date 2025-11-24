FROM nodered/node-red:latest

WORKDIR /data

COPY package.json /data/package.json
RUN npm install --production

COPY flows.json /data/flows.json
COPY flows_cred.json /data/flows_cred.json
COPY settings.js /data/settings.js

EXPOSE 8080
CMD ["node-red", "--userDir", "/data", "--settings", "/data/settings.js"]
