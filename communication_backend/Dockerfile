# Use the official Node.js image as a base image
FROM node

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port your application runs on
EXPOSE 3001

# Command to run the application
#CMD ["npm", "start"]
CMD ["npm", "start"]