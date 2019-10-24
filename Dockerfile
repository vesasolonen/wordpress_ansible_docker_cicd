# This file is a template, and might need editing before it works on your project.
FROM node:10

WORKDIR /usr/src/app

COPY playbook.yml /usr/src/app/
RUN npm install

COPY . /usr/src/app

# replace this with your application's default port
EXPOSE 3000
CMD [ "npm", "start" ]