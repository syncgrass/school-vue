# Use the official Node.js image as the base image
FROM node:18.17.1

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the Vue.js application
RUN npm run build

# Expose the port the app runs on
EXPOSE 8089

# Start the application
CMD ["npm", "run", "serve"]
