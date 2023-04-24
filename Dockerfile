
FROM node:14.20

WORKDIR /app


COPY package.json ./

RUN npm install

COPY . .


RUN ng build --prod


EXPOSE 80

CMD ["ng","--port", "80"]



