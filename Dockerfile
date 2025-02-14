FROM node:20-alpine
WORKDIR /usr/src/app

COPY package.json .
RUN npm install

# Copy ALL application files (including public/)
COPY . .

EXPOSE 3000
CMD ["npm", "start"]
