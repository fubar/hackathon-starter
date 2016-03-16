FROM registry.ng.bluemix.net/ibmnode:latest
COPY . /node
WORKDIR /node
RUN npm install
EXPOSE 9080
CMD ["node", "/node/app.js"]
