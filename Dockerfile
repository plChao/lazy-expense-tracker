# Use official Node.js image
FROM node:20-alpine
WORKDIR /app
COPY lazy-expense-tracker/package.json lazy-expense-tracker/pnpm-lock.yaml ./
RUN npm install -g pnpm && pnpm install
COPY lazy-expense-tracker .
EXPOSE 5173
CMD ["pnpm", "run", "dev", "--", "--host"]
