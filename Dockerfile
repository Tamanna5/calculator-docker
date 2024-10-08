
FROM node:14-alpine
WORKDIR /usr/app
COPY package*.json ./
RUN npm install --legacy-peer-deps
COPY . .
EXPOSE 8080
CMD ["npm", "start"]
