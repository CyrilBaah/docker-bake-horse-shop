# Use Node.js official image
FROM node:16-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the source code
COPY . .

# Expose port 3001 for the API
EXPOSE 3001

# Start the application
CMD ["npm", "start"]
