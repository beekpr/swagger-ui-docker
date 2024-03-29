FROM nginx:1-alpine
MAINTAINER Beekeeper "contact@beekeeper.io"

ENV VERSION_NORM "4.19.0"

ENV API_URL "https://api.beekeeper.io/api/2/swagger.json"
ENV API_KEY "**None**"
ENV SWAGGER_JSON "/app/swagger.json"

ENV VERSION "v$VERSION_NORM"
ENV FOLDER "swagger-ui-$VERSION_NORM"

ENV ROOT_PATH "/apidocs"

WORKDIR /app

ADD https://github.com/swagger-api/swagger-ui/archive/$VERSION.tar.gz /app/
RUN tar -xvf $VERSION.tar.gz && mv $FOLDER swagger-ui
COPY nginx.conf /etc/nginx

ADD run.sh run.sh

# webserver port
EXPOSE 8094

CMD ["sh", "run.sh"]
