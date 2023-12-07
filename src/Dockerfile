FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY mini_server.c .
COPY server.sh .

RUN apt update && apt install -y \
    gcc \
    libfcgi-dev \
    spawn-fcgi \
    && rm -rf /var/lib/apt/lists \
    && gcc mini_server.c -o mini_server -lfcgi \
    && chmod 777 /var/cache/nginx/ /var/run/ mini_server

USER nginx

ENTRYPOINT ["bin/bash", "./server.sh"]
