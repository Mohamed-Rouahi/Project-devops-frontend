# Use the official Node.js image as a parent image
FROM node:latest

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the application source code into the container
COPY . .

# Build the Angular application
RUN npm run build

# Expose the port your Angular app runs on (usually 80)
EXPOSE 80

# Command to serve your Angular app
CMD ["npm", "run", "start"]
