FROM node:16

WORKDIR /usr/src/app

# Copy and install dependencies
COPY package*.json ./
RUN npm install

# Copy everything else
COPY . .

# Expose the web service port
EXPOSE 8000

CMD node . 192.168.178.25
