# OBSOLETE - orchestration moved to EEA Rancher catalog
 - see ["EEA - ODP CKAN" Rancher catalog template](https://github.com/eea/eea.rancher.catalog/blob/master/templates/odp-ckan)

# ODP CKAN Docker orchestration for EEA

Docker orchestration for EEA [**ODP CKAN**](https://github.com/eea/eea.odpckan)

## Base docker image

 - [hub.docker.com](https://hub.docker.com/_/python/)

## Prerequisites

- Install [Docker](https://docs.docker.com/installation/)
- Install [Compose](https://docs.docker.com/compose/install/)

## Installation

Clone the repository

    $ git clone https://github.com/eea/eea.docker.odpckan.git
    $ cd eea.docker.odpckan

During the first time deployement, create and edit the secret file

    $ cp .secret.example .secret
    $ vim .secret
    $ # edit connection for both RabbitMQ and CKAN services

Start container

    $ docker-compose up -d
    $ docker-compose logs

## Copyright and license

The Initial Owner of the Original Code is European Environment Agency (EEA).
All Rights Reserved.

The Original Code is free software;
you can redistribute it and/or modify it under the terms of the GNU
General Public License as published by the Free Software Foundation;
either version 2 of the License, or (at your option) any later
version.

## Funding

[European Environment Agency (EU)](http://eea.europa.eu)
