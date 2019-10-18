# base image
FROM node:12.2.0-alpine as mmd-app

# select working directory
WORKDIR /usr/src/app

# Installing dependencies
COPY . ./
RUN yarn
RUN yarn build

FROM nginx:alpine
COPY --from=mmd-app /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]