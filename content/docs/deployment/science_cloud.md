---
title: UZH Science Cloud
linkTitle: Science Cloud
description: <a href="cloud.s3it.uzh.ch">Science Cloud</a>
---

The Citizen Science Center has a set of Virtual Servers running inside the UZH ScienceCloud, you will need to ask for permission to access the instances.

The project is `cccs.uzh`.

# Servers

* c3s-prodapi - `api.citizenscience.ch`
* production_db - Used by `c3s-prodapi`
* staging - `staging.citizenscience.ch`
* wenker - `wenker.citizenscience.ch`
* s3 - `objects.citizenscience.ch`
* gl-runner - Runner used by `gitlab.uzh.ch`
* c3s-tools - Running our RocketChat instance and some other utilities
* deploy - Running the `autodeploy` code to deploy into K8S or Openshift
* pybossa - Running `pb.citizenscience.ch`

# Data

All backups are currently inside ScienceCloud and there is no external backup provider.