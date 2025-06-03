FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# 👇 Ensure both files stay where index.js expects them
RUN mkdir -p public && cp index.html public/index.html

EXPOSE 3000
CMD ["node", "index.js"]
