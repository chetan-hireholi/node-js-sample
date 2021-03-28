FROM node:10
ENV NODE_ENV=integration

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --integration

COPY . .

EXPOSE 5000
CMD ["node","index.js"]