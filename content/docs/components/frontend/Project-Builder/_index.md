---
title: Project Builder
linkTitle: "Builder"
weight: 3
description: >
  Project Builder Project

---

# Overview

The Project Builder was built by `mobilethinking`, an agency in Geneva. It was built to support Pybossa so it can also be used by the `Citizen Cyber Lab` in Geneva. The Citizen Science Center Backend is slightly different to Pybossa in the following ways:

* `TaskRuns` are `Submissions`
* `Projects` can be part of `ProjectGroup`s
* `Media` is stored separately to the `Task`
* `Comments` are supported at all levels
* `API` created and documented through `OpenAPI` spec
* All models have an `info` attribute that supports `JSONB`

## Structure

* `api`
* `components`
  * `Helper`
  * `Profile`
    * `ProfileEditor.vue`
  * `Project`
    * `Builder`
    * `Menu`
    * `Project.vue`
    * `ProjectDescription.vue`
    * `ProjectEditor.vue`
  * `Registration`
  * `shared` - Git submodule for Citizen Science `shared-components` repo
  * `Task` 
    * `Builder`
      * `SourceEditor`
      * `TemplateEditor`
    * `Template` - Templates for current supported Tasks
      * `Document`
      * `Image`
      * `Sound`
      * `Twitter`
      * `Geocoding`
      * `Video`
  * `About.vue`
  * `Breadcrumb.vue`
  * `Discover.vue`
  * `Home.vue`
  * `Login.vue`
* `router`
* `store`

## Running

This project uses `webpack` to build and run.

`npm install`
`npm run serve`
`npm run build`

## Config

Config files are in the `config` folder and set using the `NODE_ENV`. For example: `NODE_ENV=staging npm run serve`

## Functionality

* Create Projects
* Import Tasks from CSV
* Search Projects
* Export Submissions
