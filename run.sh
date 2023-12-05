#! /bin/sh

set -e

SWAGGER_HTML=swagger-ui/dist/index.html

#sed -i "s|https://petstore.swagger.io/v2/swagger.json|$API_URL|g" $SWAGGER_HTML
#sed -i "s|https://example.com/api|$API_URL|g" $SWAGGER_HTML

exec nginx -g 'daemon off;'

