# Use the official Node.js image with the latest tag as the base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the application files to the working directory
COPY package*.json ./
COPY . .

# Install application dependencies
RUN npm install

# Expose the port on which the API gateway listens
EXPOSE 4000

# Define the startup command for the container
CMD ["npm", "start"]
