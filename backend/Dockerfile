FROM node:18-slim

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY . .
RUN npm install

# Build TypeScript to JavaScript
RUN npm run build

# Expose the application port
EXPOSE 5000

# Start the application
CMD ["node", "dist/index.js"]

