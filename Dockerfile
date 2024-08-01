FROM node:latest as build
WORKDIR /app
COPY package*.json ./
ARG REACT_APP_NAME=default_value
ENV REACT_APP_NAME $REACT_APP_NAME  
COPY . .
RUN npm install
RUN npm run build
CMD npm run start

