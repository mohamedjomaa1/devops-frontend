# Use Node.js version 18 or higher as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if available) first to leverage caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Build the Angular app (use --configuration production instead of --prod)
RUN npm run build -- --configuration production

# Expose the port Angular app runs on
EXPOSE 4200

# Serve the app
CMD ["npm", "start"]
