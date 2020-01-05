---
title: Deploying
linkTitle: "Deploying"
weight: 2
description: >
  Deploying Backend Server
---

## Initial Setup

* Clone the backend repo
* Checkout the correct branch (`master` for `production` etc)
* Use git-secret reveal to decrypt the `env` files
* Copy the right config file to `.env`
* `docker-compose up --build -d`

## Redeploying the backend server

* SSH to the correct server (`c3s-prodapi` or `c3s-stagingapi`).
* Update the repo with `git pull` (double check branch)
* `docker-compose up --build -d`
* If you just want the API up:
  * `docker compose up --build -d api`

