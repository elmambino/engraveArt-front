FROM node:20-alpine AS build

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build

FROM node:20-alpine

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/.output ./.output
COPY --from=build /usr/src/app/package*.json ./

EXPOSE 3000

CMD ["node", ".output/server/index.mjs"]