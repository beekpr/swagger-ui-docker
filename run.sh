#! /bin/sh

set -e

SWAGGER_HTML=swagger-ui/swagger-config.yaml

#sed -i "s|https://petstore.swagger.io/v2/swagger.json|$API_URL|g" $SWAGGER_HTML
find . -type f -exec sed -i 's|https://petstore.swagger.io/v2/swagger.json|https://api.beekeeper.io/api/2/swagger.json|g' {} +
#sed -i "s|https://example.com/api|$API_URL|g" $SWAGGER_HTML

exec nginx -g 'daemon off;'

