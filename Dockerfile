# 1. Use official Node.js image
FROM node:18-alpine

# 2. Set working directory
WORKDIR /app

# 3. Copy package.json and package-lock.json
COPY package*.json ./

# 4. Install dependencies
RUN npm install --production

# 5. Copy the rest of the application code
COPY . .

# 6. Expose port 3003
EXPOSE 3003

# 7. Set environment variable for PORT (optional, can also be set at runtime)
ENV PORT=3003

# 8. Start the app
CMD ["node", "index.js"] 