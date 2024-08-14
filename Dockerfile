# Use the official Node.js image as a base image
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (or yarn.lock) to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the application
RUN npm run build

# Install a simple web server to serve the built files
RUN npm install -g serve

# Expose port 3000 to access the application
EXPOSE 3000

# Command to run the application
CMD ["serve", "-s", "build"]
