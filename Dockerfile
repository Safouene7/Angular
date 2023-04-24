FROM node:latest


WORKDIR /app
COPY . .

RUN npm install
RUn npm run build --prod

EXPOSE 80


