FROM node:20

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY . .

ENV MONGO_URL=mongodb://mongo:27017/the_database
ENV REDIS_URL=redis://redis:6379

EXPOSE 3000

CMD ["npm", "run", "dev"]
