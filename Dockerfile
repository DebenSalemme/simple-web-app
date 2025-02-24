# Use the official Node.js image.
FROM node:14

# Create and change to the app directory.
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image.
COPY package*.json ./

# Copy local code to the container image.
COPY . .

# Install dependencies.
RUN npm install 
RUN npm install express

# Run the web service on container startup.
CMD [ "node", "index.js" ]

# Document that the service listens on port 3000.
EXPOSE 3000