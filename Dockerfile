FROM node:12.0.0-alpine as folder
COPY package*.json ./
RUN yarn install
COPY ./ ./
RUN yarn build

FROM nginx:alpine
WORKDIR /usr/app
COPY –from=folder /build /usr/app
CMD [“nginx”, “-g”, “daemon off”
