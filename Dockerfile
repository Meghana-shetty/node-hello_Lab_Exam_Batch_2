FROM node:16-alphine
LABEL Name = "Node lab exam"
WORKDIR /app

COPY package.json .
RUN npm install --production --silent

COPY . .

EXPOSE 3000
STARTPOINT ["npm", "start"]
