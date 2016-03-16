FROM registry.ng.bluemix.net/ibmnode
MAINTAINER Jess is TheBest <jessica@famespike.com>

ADD package.json /app/package.json
RUN cd /app && npm install
ADD app.js /app/app.js
COPY public /app/public
ENV WEB_PORT 80
EXPOSE 80

CMD ["node","/app/app.js"]
