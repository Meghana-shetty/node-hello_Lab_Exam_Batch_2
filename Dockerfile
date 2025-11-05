FROM node:latest
LABEL Name = "Node lab exam"
WORKDIR /app

COPY package.json .
RUN npm install --production --silent

COPY . .

EXPOSE 3000
ENTRYPOINT ["npm", "start"]
