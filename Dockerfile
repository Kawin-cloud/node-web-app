# Use ECR Public image to avoid Docker Hub rate limits
FROM public.ecr.aws/docker/library/node:20-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "server.js"]
