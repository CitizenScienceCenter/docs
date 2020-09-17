---
title: "API"
linkTitle: "API"
weight: 1
description: >
  Here's all the extensions/modifications made in Pybossa's API. E.g. Forum, shareable links etc.
---
* Github repo: https://github.com/CitizenScienceCenter/pybossa
* Branch: develop
* Path: pybossa/view/projects.py
---

Base API-URL:

* <a href="https://pb.citizenscience.ch/api">https://pb.citizenscience.ch/api - Production API</a>

* <a href="https://pybossa-staging.citizenscience.ch/api">https://pybossa-staging.citizenscience.ch/api - Staging ENV for testing - NOT always sync with PROD</a>

Base Endpoint URL:

* <a href="https://pb.citizenscience.ch">https://pb.citizenscience.ch - Production API</a>

* <a href="https://pybossa-staging.citizenscience.ch">https://pybossa-staging.citizenscience.ch - Staging ENV for testing</a>


<h1 id="c3s-api-comments">FORUM - lab.citizenscience.ch/forum</h1>


## Get Threads

Returns forum threads

> Code samples

```python
import requests
headers = {
  'Content-Type': 'application/json'
}

r = requests.get('https://pybossa-staging.citizenscience.ch/project/forum/threads', params={

}, headers = headers)

print r.json()

```

`GET /forum/threads`

<h3 id="get-a-single-comment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|offset|query|integer|false|none|
|limit|query|integer|false|none|

> Example responses

> 200 Response

```json
{
    "count": 1,
    "data": [
        {
            "avatar_url": "https://pb.citizenscience.ch/uploads/user_1/1587638641.340495_avatar.png",
            "content": {
                "text": "",
                "title": "topic 13"
            },
            "created": "Thu, 10 Sep 2020 06:39:18 GMT",
            "id": 324,
            "owner_id": 1,
            "parent": null,
            "text": null,
            "username": "ngeorgomanolis"
        }
    ],
    "status": "success"
}
```

<h3 id="get-a-single-comment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of threads|Inline|

<aside class="success">
This operation does not require authentication
</aside>


## Get Comments

Returns comments for a single thread.

> Code samples

```python
import requests
headers = {
  'Content-Type': 'application/json'
}

r = requests.get('https://pybossa-staging.citizenscience.ch/project/forum/thread/122/comments', params={

}, headers = headers)

print r.json()

```

`GET /forum/thread/<id>/comments`

<h3 id="get-a-single-comment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|query|integer|true|none|
|limit|query|integer|false|none|
|offset|query|integer|false|none|

> Example responses

> 200 Response

```json
{
    "count": 1,
    "data": [
        {
            "avatar_url": "https://pb.citizenscience.ch/uploads/user_11/1587635394.4423552_avatar.png",
            "content": {
                "text": "1"
            },
            "created": "Thu, 10 Sep 2020 06:40:16 GMT",
            "id": 326,
            "owner_id": 11,
            "parent": 324,
            "text": null,
            "username": "nigeor"
        }
    ],
    "status": "success"
}
```

<h3 id="get-a-single-comment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of threads|Inline|

<aside class="success">
This operation does not require authentication
</aside>



## Post Thread

> Code samples

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'X-CSRFToken': '<X-CSRFToken>'
}

r = requests.post('https://pybossa-staging.citizenscience.ch/project/NA/new-comment', params={

}, headers = headers)

print r.json()

```

`POST project/<project_id>/new-comment`

> Body parameter for 

```json
{
    "userId": 11,
    "parentId": null,
    "content": {
        "title": "Hello there!",
        "text": ""
    },
    "text": null
}
```

> Example responses

> 200 Response

```json
{
  "flash":"Your comment has been created!",
  "status":"success"
}

```

<h3 id="post-a-comment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Comment created|Inline|


<aside class="warning">
To perform this operation, you must be authenticated as administrator
</aside>


## Post Comment

> Code samples

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'X-CSRFToken': '<X-CSRFToken>'
}

r = requests.post('https://pybossa-staging.citizenscience.ch/project/324/new-comment', params={

}, headers = headers)

print r.json()

```

`POST project/<project_id/thread_id>/new-comment`

> Body parameter for 

```json
{
    "userId": 11,
    "parentId": 324,
    "content": {
        "title": "Hello there!",
        "text": ""
    },
    "text": null
}
```

> Example responses

> 200 Response

```json
{
  "flash":"Your comment has been created!",
  "status":"success"
}

```

<h3 id="post-a-comment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Comment created|Inline|


<aside class="warning">
To perform this operation, you must be authenticated as user. Anonymous user cannot post comments.
</aside>


## Update Comment

> Code samples

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'X-CSRFToken': '<X-CSRFToken>'
}

r = requests.post('https://pybossa-staging.citizenscience.ch/project/NA/update-comment', params={

}, headers = headers)

print r.json()

```

`POST project/<project_id/thread_id>/update-comment`

> Body parameter for 

```json
{
  "id":328,
  "parentId":324,
  "content":{
    "text":"12"
    }
  }
}
```

> Example responses

> 200 Response

```json
{
  "flash":"Your comment has been updated!",
  "status":"success"
}

```

<h3 id="post-a-comment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Comment created|Inline|


<aside class="warning">
To perform this operation, you must be authenticated as the owner of the comment.
</aside>



## Delete Topic/Comment

> Code samples

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'X-CSRFToken': '<X-CSRFToken>'
}

r = requests.post('https://pybossa-staging.citizenscience.ch/project/forum/comment/324/delete', params={

}, headers = headers)

print r.json()

```

`POST project/forum/comment/<topic_id/comment_id>/delete`

> Body parameter for 

```json
{
}
```

> Example responses

> 200 Response

```json
{
  "flash":"Your comment has been deleted!",
  "status":"success"
}

```

<h3 id="post-a-comment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[Deleted](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Comment created|Inline|


<aside class="warning">
To perform this operation, you must be authenticated as the owner of the comment or administrator.
</aside>



## Get Shareable link

> Code samples

```python
import requests
headers = {
  'Content-Type': 'application/json'
}

r = requests.get('https://pybossa-staging.citizenscience.ch/project/image_example_class/link', params={

}, headers = headers)

print r.json()

```

`GET project/<project_shortname>/link`


> Example responses

> 200 Response

```json
{
  "key":"https://lab.staging.citizenscience.ch/project/image_example_class/test/confirm?share=25f84108-f8c2-11ea-ae3e-fa163eb37865"
}


```

<h3 id="post-a-comment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Shareable link created|Inline|


<aside class="warning">
To perform this operation, you must be authenticated.
</aside>


## Post Task Category

> Code samples

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'X-CSRFToken': '<X-CSRFToken>'
}

r = requests.post('https://pybossa-staging.citizenscience.ch/project/aaaa/tasks/taskcategory', params={

}, headers = headers)

print r.json()

```

`POST /<project_short_name>/tasks/taskcategory`

> Body parameters  

```json
{
  "category":"image"
}


```

> Example responses

> 200 Response

```json

{
  "flash":"Task category added!",
  "status":"success"
}


```


## Approve a project

> Code samples

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'X-CSRFToken': '<X-CSRFToken>'
}

r = requests.post('https://pybossa-staging.citizenscience.ch/project/aaaa/approve, params={

}, headers = headers)

print r.json()

```

`POST /<project_short_name>/approve`


> Example responses

> 200 Response

```json

{
  "title":"Project approval",
  "status":"success",
  "flash":"Thank you! Our administrators will contact you in case of questions!"
}


```






## Get User Contributions

> Code samples

```python
import requests
headers = {
  'Content-Type': 'application/json'
}

r = requests.post('https://pybossa-staging.citizenscience.ch/migros/project/MILCH/contributions, params={

}, headers = headers)

print r.json()

```

`GET /<user_name>/project/<project_short_name>/contributions`


> Example responses

> 200 Response

```json

{
  "link":"user_11/a8264fb0-f8c9-11ea-8f64-fa163ec76b06_sec_user_contributions.zip",
  "msg":"success"
}


```




