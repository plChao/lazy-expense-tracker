# ---- Base ----
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy dependency files first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of project files
COPY . .

# Expose Vite's default dev port
EXPOSE 5173

# Run in dev mode
CMD ["npm", "run", "dev", "--", "--host"]
