# build stage
FROM node:14 as build-stage
WORKDIR /app
COPY package*.json ./
COPY vue.config.js ./
RUN npm install
COPY . .
RUN npm run build

# production stage
FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

# docker build -t bellfeige/page-redirect .

# docker pull bellfeige/page-redirect:latest
# docker run -it -p 80:80 --rm --name page-redirect bellfeige/page-redirect:latest

# docker tag bellfeige/page-redirect bellfeige/page-redirect:latest

# docker commit bellfeige/page-redirect bellfeige/page-redirect:latest

# docker push bellfeige/page-redirect:latest