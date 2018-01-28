# Developer Survey Database

What is the Developer Survey Database?

The Developer Survey database stores the anonymized information that was
collected during the survey period.

## Local development

Use the `migrate.sh` script or,

Create a local config file to store the database connection string and
optionally the database credentials. Flyway will apply the default values from
the `flyway.conf` in the root of this repository and will override those values
with any values from your custom configuration.

### Flyway properties

The following placeholders need to be populated in the flyway.conf:

```sh
flyway.placeholders.admin_email=
flyway.placeholders.admin_password_algorithm=
flyway.placeholders.admin_password_hash=
flyway.placeholders.admin_password_salt=
flyway.placeholders.admin_user=
```

### Database connection string.
flyway.url=jdbc:postgresql://<database-ip>:<database-port>/cleveland_developer_survey

### Database Credentials
flyway.user=<username>
flyway.password=<password>
```

Then run the following command to use the custom configuration.

```sh
$ flyway -configFile=<credentials-config> clean migrate
```

### Postgres

To spin up a local postgres database for testing just run the following docker
run command:

```sh
$ docker run -it --rm --name developer-survey-postgres \
    -e POSTGRES_PASSWORD=survey \
    -e POSTGRES_USER=developer \
    -p 5432:5432 \
    postgres
```

## Docker

### Build

Building the image

```sh
$ docker build -t developer-survey-database:latest .
```

