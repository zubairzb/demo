# -------- Stage 1: Build the app --------
FROM node:18-slim AS builder

WORKDIR /app

# Copy only package files first to leverage Docker cache
COPY package*.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Build the production files
RUN npm run build

# -------- Stage 2: Serve with NGINX --------
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy built files from builder
COPY --from=builder /app/dist /usr/share/nginx/html

# Expose port
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]

