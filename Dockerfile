FROM node:20-alpine
WORKDIR /app
COPY ws17/package*.json ./
RUN npm ci --omit=dev
COPY ws17 .
ENV NODE_ENV=production
ENV PORT=3007
EXPOSE 3007
CMD ["npm", "start"]
