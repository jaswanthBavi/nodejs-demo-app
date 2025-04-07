# Use Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /opt

# Copy files
COPY package*.json ./
RUN npm install
COPY . .

# Start app
CMD ["node", "index.js"]

