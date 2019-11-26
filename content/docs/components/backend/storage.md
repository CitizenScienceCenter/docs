---
title: Object Storage
linkTitle: "Object Storage"
weight: 2
description: >
  Storing Media related to Tasks and/or Submissions
---

Currently, a `Minio` server is used to store media for tasks and submissions. Media uploaded here is linked in the `Media` model (under `path`).

The production URL for `Minio` is: [https://objects.citizenscience.ch](https://objects.citizenscience.ch)

## Connecting

To connect, you will need an Access Key and a Secret. `Minio` is S3 compatible, so it can be connected from any S3 library.

The `vuex-c3s` library has an `upload` function that will upload directly from the web to Minio and insert a `Media` record.

## Running Locally

`Minio` can be run locally using `Docker`, details can be found [here](https://docs.min.io/docs/minio-docker-quickstart-guide)


