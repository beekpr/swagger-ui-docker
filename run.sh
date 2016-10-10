#! /bin/sh

set -e

SWAGGER_HTML=swagger-ui/dist/index.html

sed -i "s|http://petstore.swagger.io/v2/swagger.json|$API_URL|g" $SWAGGER_HTML
sed -i "s|http://example.com/api|$API_URL|g" $SWAGGER_HTML

exec nginx -g 'daemon off;'

