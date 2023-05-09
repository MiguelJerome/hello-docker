# Use an official Node.js runtime as the base image
FROM node:14-alpine


# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json into the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the application source files into the container
COPY . .

# Expose the port your application will run on
EXPOSE 3000

# Start the application
CMD ["node", "app.mjs"]
