FROM node
ENV NODE_ENV="production"
ENV STATIC_DATA_PATH="/var/www/html/images/"
RUN mkdir /server  && mkdir -p ${STATIC_DATA_PATH}
WORKDIR /server
COPY . .
RUN npm install
EXPOSE 5000
CMD npm run start