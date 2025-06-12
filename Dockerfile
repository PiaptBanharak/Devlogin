FROM php:8.0-apache

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libpq-dev \
    git \
    unzip \
    && docker-php-ext-install pdo pdo_pgsql

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Install PHPMailer (ensure it's installed in the project root or accessible path)
COPY composer.json ./
RUN composer install --no-dev --optimize-autoloader

# Enable full PHP error logging to stderr
RUN echo "display_errors = On" >> /usr/local/etc/php/conf.d/php-custom.ini \
    && echo "display_startup_errors = On" >> /usr/local/etc/php/conf.d/php-custom.ini \
    && echo "error_reporting = E_ALL" >> /usr/local/etc/php/conf.d/php-custom.ini \
    && echo "log_errors = On" >> /usr/local/etc/php/conf.d/php-custom.ini \
    && echo "error_log = /dev/stderr" >> /usr/local/etc/php/conf.d/php-custom.ini 