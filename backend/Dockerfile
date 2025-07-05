# -------- Stage 1: Build Stage --------
FROM node:18-slim AS builder

WORKDIR /app

# Copy only package files first to cache dependencies
COPY package*.json ./

RUN npm install

# Copy rest of the code
COPY . .

# Transpile TypeScript to JavaScript
RUN npm run build

# -------- Stage 2: Production Image --------
FROM node:18-slim

WORKDIR /app

# Copy only compiled JS and necessary files
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/package*.json ./

# Install only production dependencies
RUN npm install --omit=dev --no-cache

# Expose app port
EXPOSE 5000

# Default command
CMD ["node", "dist/index.js"]

