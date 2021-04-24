FROM node:alpine

WORKDIR /app

COPY package.json .
RUN npm config set unsafe-perm true
RUN npm install --force
COPY . .

RUN chown -R node /app/node_modules
USER node

CMD ["npm", "start"]