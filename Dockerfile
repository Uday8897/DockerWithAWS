FROM node:16.17-alpine

WORKDIR /app

COPY package*.json .  # Add a dot to specify the destination

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]  # Use standard double quotes (not smart quotes)
