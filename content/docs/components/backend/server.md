---
title: Server
linkTitle: "Server"
weight: 2
description: >
  Backend Server
---

The backend server is built using the [Connexion](https://github.com/zalando/connexion) framework with the `Swagger` and `OpenAPI` specification. Detailed documentation for the API can be found in this section as well.

## Development

Environment files are in the `config` directory and should be symlinked to the root `.env` file. 

### Setup

1. `git clone https://github.com/citizensciencecenter/backend && cd backend`
2. `virtualenv activate serv_env` (Python 3)
3. `source serv_env/bin/activate`
4. `pip install -r requirements.txt`
5. `git secret reveal` (Make sure you have been added here)
6. `ln -sf config/<YOUR_ENV>.cfg .env`
7. `make local`

### Makefile

* `make spec` - Generate a new Openapi file to `openapi/cc.yaml` (Requires speccy, `npm i -g speccy`)

* `make localdb` - Create a local Postgres Docker container and expose

* `make swaggerui` - Create a local Openapi explorer

* `make run` - Run locally using your virtualenv

* `make test` - Run pytest

* `make docker` - Run using docker (can also use `make daemon` to daemonise it)

## Structure

### API

Each folder represents a model that is accessible via the API and each contains a `Model` and a `Custom` file. `Model` files handle all the REST operations on the `Model` itself and `Custom` has any extra operations.

For example, `project/model.py` will have `create_project` and `project/custom.py` will have  `get_random_project_tasks`

* activity
* comment
* importers - This folder is used to create importers for any model. Currently, only CSV is supported
* media
* member
* project
* project_group
* submission
* task
* user

### DB

Uses `Pony ORM` to create models in the connected DB.

### DECORATORS

This folder handles access checks or other prerequisites for methods. If something needs to be checked before an operation is performed, add it here.

### MIDDLEWARE

Currently only used for the generic `ResponseHandler` used throughout the API

### OPENAPI (Previously called swagger)

A collection of `yaml` files used for `OpenAPI`, the core spec is at `openapi/oapi.yaml` but reads from files such as `openapi/schema.yaml`. If you change **anything** about the API, then that change should also be made here. For example, a change to the structure of a `POST` body or a new endpoint.

### APP.PY

Holds the code to start the application and handles the config.

### Versions

### v2 - `master`

`v2` is the API that runs all of the projects sites but is no longer in active use. It is the `master` branch of the [Backend](https://github.com/citizensciencecenter/backend) repo and can be found [here](https://api.citizenscience.ch/api/v2/swagger.json). The API explorer is [here](https://api.citizenscience.ch/explorer)

### v3 - `feature/openapi`

`v3` is the latest (currently in beta) version of the API that uses `OpenAPI` (the successor to Swagger) and has a slightly different data model.

### Data Model

#### Summary

A `User` can create a `Project` or a `Project Group`. `Projects` can be part of a `ProjectGroup` or standalone. `Projects` have `Tasks` that can be open in their format. Users can add `Submissions` to `Tasks`.
`Media` can be added to any model in the database. 

#### Upcoming Changes

Currently, only the owner of a project can make certain changes, but there is `Role` and `Members` that is in the implementation phase.


