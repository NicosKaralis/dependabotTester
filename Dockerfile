# FROM caddy:alpine AS builder

# FROM php:fpm-alpine

# COPY --from=builder /usr/bin/caddy /usr/bin/caddy

# # RUN docker-php-ext-install mbstring pdo pdo_mysql

# COPY . /srv/app
# COPY .docker/Caddyfile /etc/Caddyfile

# WORKDIR /srv/app
# RUN chown -R www-data:www-data /srv/app

# CMD [ "/usr/bin/caddy", "run", "--config", "/etc/Caddyfile" ]

# # curl -fsSL https://get.docker.com | bash
# # sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# # sudo chmod +x /usr/local/bin/docker-compose

FROM php:apache
COPY html /var/www/html
WORKDIR /var/www/html

# # COPY . .
# EXPOSE 80

