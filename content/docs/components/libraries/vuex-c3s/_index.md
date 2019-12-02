---
title: Vuex-C3S
linkTitle: Vuex-C3s
description: <a href="https://www.npmjs.com/package/vuex-c3s">NPM Package</a>
---

## Vuex-C3S

### What?

A small Vue plugin that integrates into your existing store, providing access to the Citizen Science API and allowing you to sync locally with your Vue site.

## How

### v2 (versions below 1.1.0)

`npm install --save vuex-c3s`

```javascript 
import c3s from 'vuex-c3s'

const swaggerURL = "https://swagger.petstore.io/swagger.json"
Vue.use(c3s.plugin, {store, swaggerURL})

***

user: state => state.c3s.user.currentUser
```


### v3 (versions above 2.0.0, currently in `beta`)

`npm install --save-dev vuex-c3s@beta`

```javascript 
import c3s from 'vuex-c3s'

const apiURL = 'https://staging.citizenscience.ch/v3/openapi.json'
const server = 'https://staging.citizenscience.ch/v3/'
Vue.use(c3s.plugin, {
  store,
  apiURL,
  server
})

***

user: state => state.c3s.user.currentUser
```


## Store Structure

**NB**: Below, Store properties are camel case and submodules are title case

* C3S
    * client
    * host
    * User
        * user
        * currentUser
    * Project
        * projects
        * project
        * media
        * comments
    * Activity
        * activities
        * activity
        * media
        * comments
    * Task
        * tasks
        * task
        * media
        * comments
    * Media
        * media
        * medium
    * Comments
        * comments
        * comment
        
 ## Store Methods
 
 Each module has the following methods available:
 * get`Plural`**(**search**:JSON) - Retrieve all of the model, with a query object
 * get`Singular`(**id**:String) - Retrieve a single model matching the ID
 * create`Singular`(**model**: JSON) - Create an instance of the model
 * update`Singular`(**model**:JSON, **id**:String) - Update an instance of the model
 * delete`Singular`(**id**:String) - Delete an instance of the model
 
 e.g.:
 
 ```javascript
this.$store.dispatch('c3s/tasks/getTask', 'abc4e6')
```
