# Stage1

FROM node:20 as build
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .
RUN npm run build

#Stage 2 : server react app

FROM nginx:1.27.3-alpine-slim
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 8080
CMD [ "nginx","-g","daemon off;" ]
 