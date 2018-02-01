FROM icirellik/flyway-docker:4

ENV DATABASE_IP=127.0.0.1 \
    DATABASE_NAME=cleveland_developer_survey \
    DATABASE_PASSWORD=survey \
    DATABASE_PORT=5432 \
    DATABASE_USERNAME=developer

WORKDIR /root

ADD . /root

ENTRYPOINT ["/root/build/start.sh"]
