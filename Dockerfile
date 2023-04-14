# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in package.json
RUN npm install

# Expose port 9556 for the application
EXPOSE 9886

# Define the command to run the application
CMD [ "npm", "start" ]
