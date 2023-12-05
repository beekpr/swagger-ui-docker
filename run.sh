#! /bin/sh

set -e

find . -type f -exec sed -i 's|https://petstore.swagger.io/v2/swagger.json|https://api.beekeeper.io/api/2/swagger.json|g' {} +

exec nginx -g 'daemon off;'

