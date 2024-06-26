FROM node:18-alpine

WORKDIR /backend

COPY ./package* ./

RUN npm ci

COPY ./ ./

EXPOSE 3000

CMD ["npm", "start"]
