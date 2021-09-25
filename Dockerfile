# Stage 1, based on Nginx, to have only the compiled app, ready for production with Nginx
FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY /src .
EXPOSE 80
ENTRYPOINT ["nginx","-g","daemon off;"]