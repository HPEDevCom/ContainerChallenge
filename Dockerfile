FROM node
 
RUN mkdir /app
# set working directory
WORKDIR /app
 
# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH
 
# install and cache app dependencies
COPY package.json /app/package.json
 
RUN npm install --silent
 
COPY . .
# Application port
EXPOSE 3000
 
# Remote debugging port
EXPOSE 9229
 
# start app
CMD ["npm", "start"]
