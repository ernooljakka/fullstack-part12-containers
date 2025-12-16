FROM node:20

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY . .

ENV VITE_BACKEND_URL=http://backend:3000
EXPOSE 5173

CMD ["npm", "run", "dev"]
