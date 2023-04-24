FROM node:latest


WORKDIR ./


COPY package.json ./


RUN npm install
RUn npm run build --prod


COPY . .


EXPOSE 80


CMD ["npx", "http-server", "-p", "80", "-c-1", "dist"]
