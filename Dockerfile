FROM nginx:latest
WORKDIR /app
COPY . /app
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

