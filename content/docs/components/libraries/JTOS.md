---
title: Javascript To SQL
linkTitle: JTOS
weight: 3
description: <a href="https://pypi.org/project/JTOS/">PyPi Package</a>
---

# JTOS

JSON to SQL. Inspired by the Loopback Query Language, this is a standalone Python library to convert JSON objects to SQL.

## Building and Deploying

The project is hosted on PyPi, contact [Chris](mailto:chris@gwillia.ms) to become collaborator and make changes.

Use `Make`, check the version number in `setup.py`:

1. `make build`
2. `make upload` - ensure you have logged into `pip`

## Usage

```
from jtos.jtos import JTOS

js = JTOS()

parsed = js.parse_object(obj)

```

## Schema

### Select
```json
{
  "select": {
    "tables": [],
    "fields": []
   }
}
```
### Joins
```json
{
  "join": {
    "type": "LEFT | RIGHT etc",
    "conditions":{
      "from": {
        "table": "",
        "field": ""
      },
      "to": {
        "table": "",
        "field": ""
      }
    } 
  }
}
```

### Where Conditions
```json
{
  "where": [
    {
      "field": "",
      "op": <op>,
      "val": "",
      "join": "o|a"
    }
  ]
}
```

NOTE: An operator should only be included from the second index and it will be prepended to the built string

### Ordering
```json
{
  "select":{
    ...,
    "orderBy": {
      "<field>": "ASC|DESC"
    }
  }
}
```
### Grouping
```json
{
  "select":{
    ...,
    "groupBy": [
      "<field>"
    ]
  }
}
```
### Paging
```json
{
  "limit": 100,
  "offset": 3
}
```
### Insert
```json
{
  "insert": {
    "table": "",
    "values": {
      "<field>": "<value>"
    }
  }
}
```


## Operations

* gt - >
* lt - <
* gte - >=
* lte - <=
* e - =
* ne - !=
* l - LIKE
* nl - NOT LIKE
* a - AND
* a - OR

---

## Notes

This does **no** authentication or validation,
it just blindly trusts the tests.

Do not run on production unless you are comfortable with it in your test environment first

## Contributing

Tests, please! But also any work on Upserts or Delete are also greatly appreciated

## TODO

* [X] Select
* [X] Where
* [X] Joins
* [X] Insert
* [ ] Upsert (this syntax is quite different so maybe needs a different parser)
* [X] Delete


## Examples
  
Examples are included in the `tests` directory

