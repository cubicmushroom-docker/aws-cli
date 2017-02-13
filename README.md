# cubicmushroom/aws-cli

A simple docker that allows you to pass through aws-cli commands

This is a fork of the `pebbletech/docker-aws-cli` project


## Example usage

```
docker pull cubicmushroom/aws-cli
docker run -v ${HOME}/.aws/credentials:/root/.aws/credentials cubicmushroom/aws-cli s3api list-objects --bucket bucket --prefix folder/ --output json
```

Basically, `aws` becomes `docker run -v ${HOME}/.aws/credentials:/root/.aws/credentials cubicmushroom/aws-cli aws`.


## Docker composer

Add the following to your project's `docker-compose.yml` file to use within a docker compose environment…

    services:
        aws:
            image:  cubicmushroom/aws-cli
            volumes:
              - ${HOME}/.aws/credentials:${HOME}/.aws/credentials

… then run using the command

    $ docker-compose run --rm aws s3api list-objects --bucket bucket --prefix folder/ --output json