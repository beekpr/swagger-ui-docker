# Beekeeper Swagger UI

This is a repo containing docker image running Swagger UI. It is mounted in our monolith clusters under `/apidocs` URL. It is mostly used internally for browsing through version API documentation generated in that particular environment - as external developers use our Developer Portal API docs as reference.

# How it works

The `Dockerfile` installs the selected version of **swagger-ui* and copies all the relevant files to the target container.

The `nginx.conf` contains configuration for the `/apidocs` path

The `run.sh` script, when executed on container, looks up for all the occurances of the `https://petstore.swagger.io/v2/swagger.json` string (which is a default API definition used in **swagger-ui**) and replaces it with the link to Monolith's public API definition. 
