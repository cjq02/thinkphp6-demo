FROM php:7.4.33-fpm

# 安装依赖
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libzip-dev \
    zip \
    unzip \
    git \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd pdo_mysql mysqli zip

# 设置工作目录
WORKDIR /var/www/html

# 安装 Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# 设置权限
RUN chown -R www-data:www-data /var/www/html 