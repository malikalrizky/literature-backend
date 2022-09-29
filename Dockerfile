FROM node:16

ENV NODE_ENV production
ENV DATABASE_URL postgresql://malik:P4ssword@database:5432/literature

WORKDIR /app
COPY . .

RUN npm install
RUN npm install sequelize-cli -g
RUN npx sequelize-cli db:migrate --env production
EXPOSE 5000
CMD ["node","server.js"]
