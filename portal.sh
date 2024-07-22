#!/bin/bash

# Install dependencies using Bun
bun install

# Run development server using Bun
bun dev &

# Install PHP dependencies using Composer
composer install

# Regenerate autoload files using Composer
composer dump-autoload

# Clear caches and optimize the Laravel application
php artisan optimize:clear

# Wait for all background processes to complete
wait

echo "All tasks completed successfully."
