FROM node:14

# install simple http server for serving static content
RUN npm install -g http-server

# make the 'app' folder the current working directory
WORKDIR /app

# copy both 'package.json' and 'package-lock.json' (if available)
COPY package*.json ./

# install project dependencies
RUN npm install

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .

# build app for production with minification
RUN npm run build

EXPOSE 443

EXPOSE 80

CMD [ "npm", "run", "serve" ]

# sudo docker build -t bellfeige/page-redirect .

# sudo docker pull bellfeige/page-redirect:latest
# sudo docker run -it -p 443:443 --rm --name page-redirect bellfeige/page-redirect:latest

# sudo docker tag bellfeige/page-redirect bellfeige/page-redirect:latest

# sudo docker commit bellfeige/page-redirect bellfeige/page-redirect:latest

# sudo docker push bellfeige/page-redirect:latest