#Pulling image from docker hub
FROM node:latest

#Creat a working directory
WORKDIR /apps

#Copy dependencies to the container
COPY package*.json ./

#Install packages
RUN npm install 

#Copy all folders/directories  into the  working directory
COPY . .
 
#Expose port for web traffic
EXPOSE 3000

#Strt app
CMD ["node", "server.js"]

