FROM nginx

RUN apt-get update && apt-get install -y curl vim procps
WORKDIR /var/www/html
COPY ./index.html ./index.html

HEALTHCHECK --interval=30s --timeout=30s --retries=3 CMD [ "service", "nginx", "status", "||", "exit 1" ]
