# Stage 1: Test stage
FROM node:20 AS test
WORKDIR /app

# Copy package files
COPY package.json package-lock.json ./

# Install all dependencies (including dev dependencies for testing)
RUN npm install

# Copy source code
COPY . .

# Run tests
RUN npm test

# Stage 2: Build stage (production)
FROM node:20 AS build
WORKDIR /app

# Copy package files
COPY package.json package-lock.json ./

# Install production dependencies
RUN npm install --omit=dev

# Copy source code
COPY . .

# Set backend URL
ENV VITE_BACKEND_URL=http://localhost:3000

# Build the frontend
RUN npm run build

# Install serve globally
RUN npm install -g serve

# Expose port
EXPOSE 4173

# Command to serve frontend
CMD ["serve", "-s", "dist", "-l", "4173"]
