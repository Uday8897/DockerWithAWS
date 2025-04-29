# Use NodeJS official image
FROM node:16.17-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the project files
COPY . .

# Build the react app
RUN npm run build

# Install a lightweight web server
RUN npm install -g serve

# Expose port
EXPOSE 3000

# Command to run app
CMD ["serve", "-s", "build", "-l", "3000"]