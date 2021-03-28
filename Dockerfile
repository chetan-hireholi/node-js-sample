FROM node:10-slim

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

ENTRYPOINT ["node","index.js"]
EXPOSE 5000/tcp