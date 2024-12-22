#<<<<<<< HEAD
## Stage1
#
#FROM node:20 as build
#WORKDIR /app
#
#COPY package*.json ./
#
#RUN npm install
#
#COPY . .
#RUN npm run build
#
##Stage 2 : server react app
#
#FROM nginx:1.27.3-alpine-slim
#COPY --from=build /app/dist /usr/share/nginx/html
#EXPOSE 8080
#CMD [ "nginx","-g","daemon off;" ]
#
#=======
#FROM amd64/openjdk:21-jdk-slim
#WORKDIR /app
#COPY target/chat-app-backend-0.0.1-SNAPSHOT.jar app.jar
#EXPOSE 8080
#ENTRYPOINT ["java","-jar","app.jar"]
#>>>>>>> 6f048cf (Initial commit for back-end)
