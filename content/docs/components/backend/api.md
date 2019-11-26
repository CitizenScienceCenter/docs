---
title: C3S API
language_tabs:
  - javascript: Javascript
  - python: Python
toc_footers: []
includes: []
search: true
highlight_theme: darkula
headingLevel: 2

---

<h1 id="c3s-api">C3S API v3.1.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

An API for creating, running and analysing citizen science projects

Base URLs:

* <a href="https://staging.citizenscience.ch/v3">https://staging.citizenscience.ch/v3</a>

* <a href="https://api.citizenscience.ch/v3">https://api.citizenscience.ch/v3</a>

# Authentication

* API Key (anonUser)
    - Parameter Name: **X-ANON**, in: header. 

* API Key (apiKeyHeader)
    - Parameter Name: **X-API-KEY**, in: header. 

- oAuth2 authentication. 

    - Flow: implicit
    - Authorization URL = [http://localhost:8081/oauth/authorize](http://localhost:8081/oauth/authorize)

|Scope|Scope Description|
|---|---|
|apiKey|Unique identifier of the user accessing the service.|

<h1 id="c3s-api-comments">Comments</h1>

## Get a single comment

<a id="opIdget_comment"></a>

> Code samples

```javascript
var headers = {
  'Accept':'application/json',
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/comments/{cid}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'X-API-KEY': 'API_KEY'
}

r = requests.get('https://staging.citizenscience.ch/v3/comments/{cid}', params={

}, headers = headers)

print r.json()

```

`GET /comments/{cid}`

<h3 id="get-a-single-comment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cid|path|string|true|The unique identifer for an Object (i.e. User, Task, Project, Submission etc)|

> Example responses

> 200 Response

```json
{
  "content": {},
  "parent": "string",
  "source_id": "string",
  "user_id": "string",
  "created_at": "2015-07-07T13:49:51.230000Z",
  "id": "string",
  "info": {},
  "updated_at": "2015-07-07T13:49:51.230000Z"
}
```

<h3 id="get-a-single-comment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return comment|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Comment does not exist|None|

<h3 id="get-a-single-comment-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» content|object|true|none|none|
|» parent|string|false|none|none|
|» source_id|string|true|none|The task or project (or anything with an ID) it is related to|
|» user_id|string|true|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader, anonUser
</aside>

## Post a comment

<a id="opIdcreate_comment"></a>

> Code samples

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/comments',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'X-API-KEY': 'API_KEY'
}

r = requests.post('https://staging.citizenscience.ch/v3/comments', params={

}, headers = headers)

print r.json()

```

`POST /comments`

> Body parameter

```json
{
  "content": {},
  "parent": "string",
  "source_id": "string",
  "user_id": "string",
  "info": {}
}
```

<h3 id="post-a-comment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[#/paths/~1comments/post/requestBody](#schema#/paths/~1comments/post/requestbody)|false|none|
|» content|body|object|true|none|
|» parent|body|string|false|none|
|» source_id|body|string|true|The task or project (or anything with an ID) it is related to|
|» user_id|body|string|true|none|

> Example responses

> 201 Response

```json
{
  "content": {},
  "parent": "string",
  "source_id": "string",
  "user_id": "string",
  "created_at": "2015-07-07T13:49:51.230000Z",
  "id": "string",
  "info": {},
  "updated_at": "2015-07-07T13:49:51.230000Z"
}
```

<h3 id="post-a-comment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Comment created|Inline|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|Comment already exists|None|

<h3 id="post-a-comment-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» content|object|true|none|none|
|» parent|string|false|none|none|
|» source_id|string|true|none|The task or project (or anything with an ID) it is related to|
|» user_id|string|true|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader, anonUser
</aside>

## Remove a Comment

<a id="opIddelete_comment"></a>

> Code samples

```javascript
var headers = {
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/comments/{cid}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'X-API-KEY': 'API_KEY'
}

r = requests.delete('https://staging.citizenscience.ch/v3/comments/{cid}', params={

}, headers = headers)

print r.json()

```

`DELETE /comments/{cid}`

<h3 id="remove-a-comment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cid|path|string|true|The unique identifer for an Object (i.e. User, Task, Project, Submission etc)|

<h3 id="remove-a-comment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Comment was deleted|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Comment does not exist|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## Modify/Create a Comment

<a id="opIdupdate_comment"></a>

> Code samples

```javascript
var headers = {
  'Content-Type':'application/json',
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/comments/{cid}',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'X-API-KEY': 'API_KEY'
}

r = requests.put('https://staging.citizenscience.ch/v3/comments/{cid}', params={

}, headers = headers)

print r.json()

```

`PUT /comments/{cid}`

> Body parameter

```json
{
  "content": {},
  "parent": "string",
  "source_id": "string",
  "user_id": "string",
  "info": {}
}
```

<h3 id="modify/create-a-comment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cid|path|string|true|The unique identifer for an Object (i.e. User, Task, Project, Submission etc)|
|body|body|[#/paths/~1comments/post/requestBody](#schema#/paths/~1comments/post/requestbody)|false|none|
|» content|body|object|true|none|
|» parent|body|string|false|none|
|» source_id|body|string|true|The task or project (or anything with an ID) it is related to|
|» user_id|body|string|true|none|

<h3 id="modify/create-a-comment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Comment modified|None|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|New Comment created|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

<h1 id="c3s-api-media">Media</h1>

## get_media

<a id="opIdget_media"></a>

> Code samples

```javascript

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/media',
  method: 'get',

  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests

r = requests.get('https://staging.citizenscience.ch/v3/media', params={

)

print r.json()

```

`GET /media`

Get a list of media

<h3 id="get_media-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|search_term|query|string|false|none|
|limit|query|integer|false|none|

<h3 id="get_media-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of media|None|

<aside class="success">
This operation does not require authentication
</aside>

## create_medium

<a id="opIdcreate_medium"></a>

> Code samples

```javascript
var headers = {
  'Content-Type':'application/json',
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/media',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'X-API-KEY': 'API_KEY'
}

r = requests.post('https://staging.citizenscience.ch/v3/media', params={

}, headers = headers)

print r.json()

```

`POST /media`

The media details (for files already on the server or remotely hosted)

> Body parameter

```json
{
  "filetype": "string",
  "name": "string",
  "path": "string",
  "source_id": "string",
  "info": {}
}
```

<h3 id="create_medium-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[#/paths/~1media/post/requestBody](#schema#/paths/~1media/post/requestbody)|false|none|
|» filetype|body|string|false|none|
|» name|body|string|true|Name of file|
|» path|body|string|true|Local or remote path|
|» source_id|body|string|true|The task or project or user it is related to|

<h3 id="create_medium-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Media attached|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## get_for_source

<a id="opIdget_for_source"></a>

> Code samples

```javascript
var headers = {
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/media/source/{sid}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'X-API-KEY': 'API_KEY'
}

r = requests.get('https://staging.citizenscience.ch/v3/media/source/{sid}', params={

}, headers = headers)

print r.json()

```

`GET /media/source/{sid}`

<h3 id="get_for_source-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|sid|path|string|true|Source ID|

<h3 id="get_for_source-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Media attached|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader, anonUser
</aside>

## Return pre-authorised url to upload media

<a id="opIdget_pre_signed_url"></a>

> Code samples

```javascript
var headers = {
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/media/upload',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'X-API-KEY': 'API_KEY'
}

r = requests.get('https://staging.citizenscience.ch/v3/media/upload', params={

}, headers = headers)

print r.json()

```

`GET /media/upload`

<h3 id="return-pre-authorised-url-to-upload-media-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|source_id|query|string|false|none|
|filename|query|string|false|none|

<h3 id="return-pre-authorised-url-to-upload-media-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return presigned url|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|User does not have uploading access|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## Delete all media files related to  source

<a id="opIddelete_medium"></a>

> Code samples

```javascript
var headers = {
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/media/{mid}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'X-API-KEY': 'API_KEY'
}

r = requests.delete('https://staging.citizenscience.ch/v3/media/{mid}', params={

}, headers = headers)

print r.json()

```

`DELETE /media/{mid}`

<h3 id="delete-all-media-files-related-to--source-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|mid|path|string|true|The unique identifer for an Object (i.e. User, Task, Project, Submission etc)|

<h3 id="delete-all-media-files-related-to--source-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Media deleted|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Media does not exist|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## Get single medium

<a id="opIdget_medium"></a>

> Code samples

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/media/{mid}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://staging.citizenscience.ch/v3/media/{mid}', params={

}, headers = headers)

print r.json()

```

`GET /media/{mid}`

<h3 id="get-single-medium-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|mid|path|string|true|The unique identifer for an Object (i.e. User, Task, Project, Submission etc)|

> Example responses

> 200 Response

```json
[
  {
    "filetype": "string",
    "name": "string",
    "path": "string",
    "source_id": "string",
    "created_at": "2015-07-07T13:49:51.230000Z",
    "id": "string",
    "info": {},
    "updated_at": "2015-07-07T13:49:51.230000Z"
  }
]
```

<h3 id="get-single-medium-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return Media|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Media does not exist|None|

<h3 id="get-single-medium-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[allOf]|false|none|none|
|» filetype|string|false|none|none|
|» name|string|true|none|Name of file|
|» path|string|true|none|Local or remote path|
|» source_id|string|true|none|The task or project or user it is related to|

<aside class="success">
This operation does not require authentication
</aside>

## Put a single file

<a id="opIdupdate_medium"></a>

> Code samples

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/media/{mid}',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'X-API-KEY': 'API_KEY'
}

r = requests.put('https://staging.citizenscience.ch/v3/media/{mid}', params={

}, headers = headers)

print r.json()

```

`PUT /media/{mid}`

> Body parameter

```json
{
  "filetype": "string",
  "name": "string",
  "path": "string",
  "source_id": "string",
  "info": {}
}
```

<h3 id="put-a-single-file-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|mid|path|string|true|The unique identifer for an Object (i.e. User, Task, Project, Submission etc)|
|body|body|[#/paths/~1media/post/requestBody](#schema#/paths/~1media/post/requestbody)|false|none|
|» filetype|body|string|false|none|
|» name|body|string|true|Name of file|
|» path|body|string|true|Local or remote path|
|» source_id|body|string|true|The task or project or user it is related to|

> Example responses

> 201 Response

```json
{
  "filetype": "string",
  "name": "string",
  "path": "string",
  "source_id": "string",
  "created_at": "2015-07-07T13:49:51.230000Z",
  "id": "string",
  "info": {},
  "updated_at": "2015-07-07T13:49:51.230000Z"
}
```

<h3 id="put-a-single-file-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Return Media|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Media does not exist|None|

<h3 id="put-a-single-file-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» filetype|string|false|none|none|
|» name|string|true|none|Name of file|
|» path|string|true|none|Local or remote path|
|» source_id|string|true|none|The task or project or user it is related to|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

<h1 id="c3s-api-projectgroups">ProjectGroups</h1>

## List Project Groups

<a id="opIdget_project_groups"></a>

> Code samples

```javascript

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/projectgroups',
  method: 'get',

  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests

r = requests.get('https://staging.citizenscience.ch/v3/projectgroups', params={

)

print r.json()

```

`GET /projectgroups`

<h3 id="list-project-groups-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|search|query|string|false|none|
|limit|query|integer|false|none|
|offset|query|integer|false|none|

<h3 id="list-project-groups-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return project groups|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Project group does not exist|None|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="c3s-api-projects">Projects</h1>

## Get all projects

<a id="opIdget_projects"></a>

> Code samples

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/projects',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://staging.citizenscience.ch/v3/projects', params={

}, headers = headers)

print r.json()

```

`GET /projects`

<h3 id="get-all-projects-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|search_term|query|string|false|none|
|limit|query|integer|false|none|

> Example responses

> 200 Response

```json
[
  {
    "description": "string",
    "name": "string",
    "owned_by": "string",
    "created_at": "2015-07-07T13:49:51.230000Z",
    "id": "string",
    "info": {},
    "updated_at": "2015-07-07T13:49:51.230000Z"
  }
]
```

<h3 id="get-all-projects-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return projects|Inline|

<h3 id="get-all-projects-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[allOf]|false|none|none|
|» description|string|true|none|none|
|» name|string|true|none|none|
|» owned_by|string|false|none|The ID of the user that this project is owned by|

<aside class="success">
This operation does not require authentication
</aside>

## Post a project

<a id="opIdcreate_project"></a>

> Code samples

```javascript
var headers = {
  'Content-Type':'application/json',
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/projects',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'X-API-KEY': 'API_KEY'
}

r = requests.post('https://staging.citizenscience.ch/v3/projects', params={

}, headers = headers)

print r.json()

```

`POST /projects`

> Body parameter

```json
{
  "description": "string",
  "name": "string",
  "owned_by": "string",
  "info": {}
}
```

<h3 id="post-a-project-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[#/paths/~1projects/post/requestBody](#schema#/paths/~1projects/post/requestbody)|false|none|
|» description|body|string|true|none|
|» name|body|string|true|none|
|» owned_by|body|string|false|The ID of the user that this project is owned by|

<h3 id="post-a-project-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|New project created|None|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|Project already exists|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## Get row count of query

<a id="opIdget_project_count"></a>

> Code samples

```javascript
var headers = {
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/projects/count',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'X-API-KEY': 'API_KEY'
}

r = requests.get('https://staging.citizenscience.ch/v3/projects/count', params={

}, headers = headers)

print r.json()

```

`GET /projects/count`

<h3 id="get-row-count-of-query-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|search_term|query|string|false|none|

<h3 id="get-row-count-of-query-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Row count|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## Remove a project

<a id="opIddelete_project"></a>

> Code samples

```javascript
var headers = {
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/projects/{pid}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'X-API-KEY': 'API_KEY'
}

r = requests.delete('https://staging.citizenscience.ch/v3/projects/{pid}', params={

}, headers = headers)

print r.json()

```

`DELETE /projects/{pid}`

<h3 id="remove-a-project-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|pid|path|string|true|The unique identifer for an Object (i.e. User, Task, Project, Submission etc)|

<h3 id="remove-a-project-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Project was deleted|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Project does not exist|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## Get a single project

<a id="opIdget_project"></a>

> Code samples

```javascript

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/projects/{pid}',
  method: 'get',

  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests

r = requests.get('https://staging.citizenscience.ch/v3/projects/{pid}', params={

)

print r.json()

```

`GET /projects/{pid}`

<h3 id="get-a-single-project-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|pid|path|string|true|The unique identifer for an Object (i.e. User, Task, Project, Submission etc)|

<h3 id="get-a-single-project-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return project|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Project does not exist|None|

<aside class="success">
This operation does not require authentication
</aside>

## Modify/Create a project

<a id="opIdupdate_project"></a>

> Code samples

```javascript
var headers = {
  'Content-Type':'application/json',
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/projects/{pid}',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'X-API-KEY': 'API_KEY'
}

r = requests.put('https://staging.citizenscience.ch/v3/projects/{pid}', params={

}, headers = headers)

print r.json()

```

`PUT /projects/{pid}`

> Body parameter

```json
{
  "description": "string",
  "name": "string",
  "owned_by": "string",
  "info": {}
}
```

<h3 id="modify/create-a-project-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|pid|path|string|true|The unique identifer for an Object (i.e. User, Task, Project, Submission etc)|
|body|body|[#/paths/~1projects/post/requestBody](#schema#/paths/~1projects/post/requestbody)|false|none|
|» description|body|string|true|none|
|» name|body|string|true|none|
|» owned_by|body|string|false|The ID of the user that this project is owned by|

<h3 id="modify/create-a-project-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Project modified|None|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|New project created|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## Import Tasks for a project

<a id="opIdimport_csv"></a>

> Code samples

```javascript
var headers = {
  'Content-Type':'application/json'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/projects/{pid}/import/csv',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Content-Type': 'application/json'
}

r = requests.post('https://staging.citizenscience.ch/v3/projects/{pid}/import/csv', params={

}, headers = headers)

print r.json()

```

`POST /projects/{pid}/import/csv`

> Body parameter

```json
[]
```

<h3 id="import-tasks-for-a-project-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|pid|path|string|true|The Project ID|
|body|body|array|true|CSV file content|

<h3 id="import-tasks-for-a-project-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Tasks imported|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorised|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Project does not exist|None|

<aside class="success">
This operation does not require authentication
</aside>

## Get the statistics for a Project

<a id="opIdget_stats"></a>

> Code samples

```javascript

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/projects/{pid}/stats',
  method: 'get',

  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests

r = requests.get('https://staging.citizenscience.ch/v3/projects/{pid}/stats', params={

)

print r.json()

```

`GET /projects/{pid}/stats`

<h3 id="get-the-statistics-for-a-project-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|pid|path|string|true|The Project ID|

<h3 id="get-the-statistics-for-a-project-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return project statistics|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Project does not exist|None|

<aside class="success">
This operation does not require authentication
</aside>

## Get the submissions for a project

<a id="opIdget_project_submissions"></a>

> Code samples

```javascript

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/projects/{pid}/submissions',
  method: 'get',

  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests

r = requests.get('https://staging.citizenscience.ch/v3/projects/{pid}/submissions', params={

)

print r.json()

```

`GET /projects/{pid}/submissions`

<h3 id="get-the-submissions-for-a-project-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|pid|path|string|true|The Project ID|

<h3 id="get-the-submissions-for-a-project-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return project submissions|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Project does not exist|None|

<aside class="success">
This operation does not require authentication
</aside>

## Get user submissions for a project

<a id="opIdget_project_user_submissions"></a>

> Code samples

```javascript

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/projects/{pid}/submissions/{uid}',
  method: 'get',

  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests

r = requests.get('https://staging.citizenscience.ch/v3/projects/{pid}/submissions/{uid}', params={

)

print r.json()

```

`GET /projects/{pid}/submissions/{uid}`

<h3 id="get-user-submissions-for-a-project-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|pid|path|string|true|The Project ID|
|uid|path|string|true|User ID for specific user submissions|

<h3 id="get-user-submissions-for-a-project-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return project submissions|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Project does not exist|None|

<aside class="success">
This operation does not require authentication
</aside>

## Get a task for a project

<a id="opIdget_random_project_task"></a>

> Code samples

```javascript

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/projects/{pid}/task',
  method: 'get',

  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests

r = requests.get('https://staging.citizenscience.ch/v3/projects/{pid}/task', params={

)

print r.json()

```

`GET /projects/{pid}/task`

<h3 id="get-a-task-for-a-project-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|pid|path|string|true|The Project ID|

<h3 id="get-a-task-for-a-project-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return random project task|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Project does not exist|None|

<aside class="success">
This operation does not require authentication
</aside>

## Get the tasks for a project

<a id="opIdget_project_tasks"></a>

> Code samples

```javascript

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/projects/{pid}/tasks',
  method: 'get',

  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests

r = requests.get('https://staging.citizenscience.ch/v3/projects/{pid}/tasks', params={

)

print r.json()

```

`GET /projects/{pid}/tasks`

<h3 id="get-the-tasks-for-a-project-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|pid|path|string|true|The Project ID|
|limit|query|integer|false|none|
|offset|query|integer|false|none|

<h3 id="get-the-tasks-for-a-project-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return project tasks|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Project does not exist|None|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="c3s-api-submissions">Submissions</h1>

## Remove a submission

<a id="opIddelete_submission"></a>

> Code samples

```javascript
var headers = {
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/submission/{sid}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'X-API-KEY': 'API_KEY'
}

r = requests.delete('https://staging.citizenscience.ch/v3/submission/{sid}', params={

}, headers = headers)

print r.json()

```

`DELETE /submission/{sid}`

<h3 id="remove-a-submission-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|sid|path|string|true|The unique identifer for an Object (i.e. User, Task, Project, Submission etc)|

<h3 id="remove-a-submission-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Submission was deleted|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Submission does not exist|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## Get a single submission

<a id="opIdget_submission"></a>

> Code samples

```javascript
var headers = {
  'Accept':'application/json',
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/submission/{sid}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'X-API-KEY': 'API_KEY'
}

r = requests.get('https://staging.citizenscience.ch/v3/submission/{sid}', params={

}, headers = headers)

print r.json()

```

`GET /submission/{sid}`

<h3 id="get-a-single-submission-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|sid|path|string|true|The unique identifer for an Object (i.e. User, Task, Project, Submission etc)|

> Example responses

> 200 Response

```json
{
  "content": {},
  "task_id": "string",
  "user_id": "string",
  "created_at": "2015-07-07T13:49:51.230000Z",
  "id": "string",
  "info": {},
  "updated_at": "2015-07-07T13:49:51.230000Z"
}
```

<h3 id="get-a-single-submission-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return submission|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Submission does not exist|None|

<h3 id="get-a-single-submission-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» content|object|false|none|none|
|» task_id|string|true|none|none|
|» user_id|string|true|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## Modify/Create a submission

<a id="opIdupdate_submission"></a>

> Code samples

```javascript
var headers = {
  'Content-Type':'application/json',
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/submission/{sid}',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'X-API-KEY': 'API_KEY'
}

r = requests.put('https://staging.citizenscience.ch/v3/submission/{sid}', params={

}, headers = headers)

print r.json()

```

`PUT /submission/{sid}`

> Body parameter

```json
{
  "content": {},
  "task_id": "string",
  "user_id": "string",
  "info": {}
}
```

<h3 id="modify/create-a-submission-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|sid|path|string|true|The unique identifer for an Object (i.e. User, Task, Project, Submission etc)|
|body|body|[#/paths/~1submission~1%7Bsid%7D/put/requestBody](#schema#/paths/~1submission~1%7bsid%7d/put/requestbody)|false|none|
|» content|body|object|false|none|
|» task_id|body|string|true|none|
|» user_id|body|string|true|none|

<h3 id="modify/create-a-submission-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Submission modified|None|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|New submission created|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## Get all submissions

<a id="opIdget_submissions"></a>

> Code samples

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/submissions',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://staging.citizenscience.ch/v3/submissions', params={

}, headers = headers)

print r.json()

```

`GET /submissions`

<h3 id="get-all-submissions-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|search_term|query|string|false|none|
|limit|query|integer|false|none|

> Example responses

> 200 Response

```json
[
  {
    "content": {},
    "task_id": "string",
    "user_id": "string",
    "created_at": "2015-07-07T13:49:51.230000Z",
    "id": "string",
    "info": {},
    "updated_at": "2015-07-07T13:49:51.230000Z"
  }
]
```

<h3 id="get-all-submissions-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of submissions|Inline|

<h3 id="get-all-submissions-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[allOf]|false|none|none|
|» content|object|false|none|none|
|» task_id|string|true|none|none|
|» user_id|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## Post a submission

<a id="opIdcreate_submission"></a>

> Code samples

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/submissions',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'X-API-KEY': 'API_KEY'
}

r = requests.post('https://staging.citizenscience.ch/v3/submissions', params={

}, headers = headers)

print r.json()

```

`POST /submissions`

> Body parameter

```json
{
  "content": {},
  "task_id": "string",
  "user_id": "string",
  "info": {}
}
```

<h3 id="post-a-submission-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[#/paths/~1submission~1%7Bsid%7D/put/requestBody](#schema#/paths/~1submission~1%7bsid%7d/put/requestbody)|false|none|
|» content|body|object|false|none|
|» task_id|body|string|true|none|
|» user_id|body|string|true|none|

> Example responses

> 201 Response

```json
{
  "content": {},
  "task_id": "string",
  "user_id": "string",
  "created_at": "2015-07-07T13:49:51.230000Z",
  "id": "string",
  "info": {},
  "updated_at": "2015-07-07T13:49:51.230000Z"
}
```

<h3 id="post-a-submission-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Submission created|Inline|

<h3 id="post-a-submission-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» content|object|false|none|none|
|» task_id|string|true|none|none|
|» user_id|string|true|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader, anonUser
</aside>

## Get row count of query

<a id="opIdget_submission_count"></a>

> Code samples

```javascript
var headers = {
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/submissions/count',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'X-API-KEY': 'API_KEY'
}

r = requests.get('https://staging.citizenscience.ch/v3/submissions/count', params={

}, headers = headers)

print r.json()

```

`GET /submissions/count`

<h3 id="get-row-count-of-query-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|search_term|query|string|false|none|

<h3 id="get-row-count-of-query-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Row count|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

<h1 id="c3s-api-tasks">Tasks</h1>

## Post a single task

<a id="opIdcreate_task"></a>

> Code samples

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/task',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'X-API-KEY': 'API_KEY'
}

r = requests.post('https://staging.citizenscience.ch/v3/task', params={

}, headers = headers)

print r.json()

```

`POST /task`

> Body parameter

```json
{
  "content": {},
  "project_id": "string",
  "required": true,
  "sequence": 0,
  "title": "string",
  "info": {}
}
```

<h3 id="post-a-single-task-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[#/paths/~1task/post/requestBody](#schema#/paths/~1task/post/requestbody)|false|none|
|» content|body|object|true|none|
|» project_id|body|string|true|none|
|» required|body|boolean|false|none|
|» sequence|body|integer|false|none|
|» title|body|string|true|none|

> Example responses

> 201 Response

```json
[
  {
    "content": {},
    "project_id": "string",
    "required": true,
    "sequence": 0,
    "title": "string",
    "created_at": "2015-07-07T13:49:51.230000Z",
    "id": "string",
    "info": {},
    "updated_at": "2015-07-07T13:49:51.230000Z"
  }
]
```

<h3 id="post-a-single-task-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Task created|Inline|

<h3 id="post-a-single-task-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[allOf]|false|none|none|
|» content|object|true|none|none|
|» project_id|string|true|none|none|
|» required|boolean|false|none|none|
|» sequence|integer|false|none|none|
|» title|string|true|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## Get a list of tasks

<a id="opIdget_tasks"></a>

> Code samples

```javascript
var headers = {
  'Accept':'application/json',
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/tasks',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'X-API-KEY': 'API_KEY'
}

r = requests.get('https://staging.citizenscience.ch/v3/tasks', params={

}, headers = headers)

print r.json()

```

`GET /tasks`

<h3 id="get-a-list-of-tasks-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|offset|query|number|false|none|
|search_term|query|string|false|none|
|limit|query|integer|false|none|

> Example responses

> 200 Response

```json
[
  {
    "content": {},
    "project_id": "string",
    "required": true,
    "sequence": 0,
    "title": "string",
    "created_at": "2015-07-07T13:49:51.230000Z",
    "id": "string",
    "info": {},
    "updated_at": "2015-07-07T13:49:51.230000Z"
  }
]
```

<h3 id="get-a-list-of-tasks-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of tasks|Inline|

<h3 id="get-a-list-of-tasks-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[allOf]|false|none|none|
|» content|object|true|none|none|
|» project_id|string|true|none|none|
|» required|boolean|false|none|none|
|» sequence|integer|false|none|none|
|» title|string|true|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader, anonUser
</aside>

## Post an array of tasks

<a id="opIdcreate_tasks"></a>

> Code samples

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/tasks',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'X-API-KEY': 'API_KEY'
}

r = requests.post('https://staging.citizenscience.ch/v3/tasks', params={

}, headers = headers)

print r.json()

```

`POST /tasks`

> Body parameter

```json
[
  {
    "content": {},
    "project_id": "string",
    "required": true,
    "sequence": 0,
    "title": "string",
    "info": {}
  }
]
```

<h3 id="post-an-array-of-tasks-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|array[object]|false|List of tasks|

> Example responses

> 201 Response

```json
[
  {
    "content": {},
    "project_id": "string",
    "required": true,
    "sequence": 0,
    "title": "string",
    "created_at": "2015-07-07T13:49:51.230000Z",
    "id": "string",
    "info": {},
    "updated_at": "2015-07-07T13:49:51.230000Z"
  }
]
```

<h3 id="post-an-array-of-tasks-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Task created|Inline|

<h3 id="post-an-array-of-tasks-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[allOf]|false|none|none|
|» content|object|true|none|none|
|» project_id|string|true|none|none|
|» required|boolean|false|none|none|
|» sequence|integer|false|none|none|
|» title|string|true|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## Get row count of query

<a id="opIdget_task_count"></a>

> Code samples

```javascript
var headers = {
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/tasks/count',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'X-API-KEY': 'API_KEY'
}

r = requests.get('https://staging.citizenscience.ch/v3/tasks/count', params={

}, headers = headers)

print r.json()

```

`GET /tasks/count`

<h3 id="get-row-count-of-query-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|search_term|query|string|false|none|

<h3 id="get-row-count-of-query-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Row count|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## Delete a single task. WARNING - This will also disassociate all submissions for the task

<a id="opIddelete_task"></a>

> Code samples

```javascript
var headers = {
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/tasks/{tid}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'X-API-KEY': 'API_KEY'
}

r = requests.delete('https://staging.citizenscience.ch/v3/tasks/{tid}', params={

}, headers = headers)

print r.json()

```

`DELETE /tasks/{tid}`

<h3 id="delete-a-single-task.-warning---this-will-also-disassociate-all-submissions-for-the-task-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|tid|path|string|true|The unique identifer for an Object (i.e. User, Task, Project, Submission etc)|

<h3 id="delete-a-single-task.-warning---this-will-also-disassociate-all-submissions-for-the-task-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Task was deleted|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## Get a single task

<a id="opIdget_task"></a>

> Code samples

```javascript
var headers = {
  'Accept':'application/json',
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/tasks/{tid}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'X-API-KEY': 'API_KEY'
}

r = requests.get('https://staging.citizenscience.ch/v3/tasks/{tid}', params={

}, headers = headers)

print r.json()

```

`GET /tasks/{tid}`

<h3 id="get-a-single-task-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|tid|path|string|true|The unique identifer for an Object (i.e. User, Task, Project, Submission etc)|

> Example responses

> 200 Response

```json
{
  "content": {},
  "project_id": "string",
  "required": true,
  "sequence": 0,
  "title": "string",
  "created_at": "2015-07-07T13:49:51.230000Z",
  "id": "string",
  "info": {},
  "updated_at": "2015-07-07T13:49:51.230000Z"
}
```

<h3 id="get-a-single-task-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return task|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Task does not exist|None|

<h3 id="get-a-single-task-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» content|object|true|none|none|
|» project_id|string|true|none|none|
|» required|boolean|false|none|none|
|» sequence|integer|false|none|none|
|» title|string|true|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader, anonUser
</aside>

## Modify/Create a task

<a id="opIdupdate_task"></a>

> Code samples

```javascript
var headers = {
  'Content-Type':'application/json',
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/tasks/{tid}',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'X-API-KEY': 'API_KEY'
}

r = requests.put('https://staging.citizenscience.ch/v3/tasks/{tid}', params={

}, headers = headers)

print r.json()

```

`PUT /tasks/{tid}`

> Body parameter

```json
{
  "content": {},
  "project_id": "string",
  "required": true,
  "sequence": 0,
  "title": "string",
  "info": {}
}
```

<h3 id="modify/create-a-task-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|tid|path|string|true|The unique identifer for the Task|
|body|body|[#/paths/~1task/post/requestBody](#schema#/paths/~1task/post/requestbody)|false|none|
|» content|body|object|true|none|
|» project_id|body|string|true|none|
|» required|body|boolean|false|none|
|» sequence|body|integer|false|none|
|» title|body|string|true|none|

<h3 id="modify/create-a-task-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|New task created|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## Get statistics for a specific task

<a id="opIdget_stats"></a>

> Code samples

```javascript
var headers = {
  'Accept':'application/json',
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/tasks/{tid}/stats',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'X-API-KEY': 'API_KEY'
}

r = requests.get('https://staging.citizenscience.ch/v3/tasks/{tid}/stats', params={

}, headers = headers)

print r.json()

```

`GET /tasks/{tid}/stats`

<h3 id="get-statistics-for-a-specific-task-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|tid|path|string|false|none|

> Example responses

> 200 Response

```json
{}
```

<h3 id="get-statistics-for-a-specific-task-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Stats for task submissions|Inline|

<h3 id="get-statistics-for-a-specific-task-responseschema">Response Schema</h3>

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## Get submissions for a specific task

<a id="opIdget_task_submissions"></a>

> Code samples

```javascript
var headers = {
  'Accept':'application/json',
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/tasks/{tid}/submissions',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'X-API-KEY': 'API_KEY'
}

r = requests.get('https://staging.citizenscience.ch/v3/tasks/{tid}/submissions', params={

}, headers = headers)

print r.json()

```

`GET /tasks/{tid}/submissions`

<h3 id="get-submissions-for-a-specific-task-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|tid|path|string|false|none|
|limit|query|integer|false|none|
|offset|query|integer|false|none|

> Example responses

> 200 Response

```json
[
  {
    "content": {},
    "task_id": "string",
    "user_id": "string",
    "created_at": "2015-07-07T13:49:51.230000Z",
    "id": "string",
    "info": {},
    "updated_at": "2015-07-07T13:49:51.230000Z"
  }
]
```

<h3 id="get-submissions-for-a-specific-task-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of submissions|Inline|

<h3 id="get-submissions-for-a-specific-task-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[allOf]|false|none|none|
|» content|object|false|none|none|
|» task_id|string|true|none|none|
|» user_id|string|true|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

<h1 id="c3s-api-users">Users</h1>

## Post auth for token response

<a id="opIdgenerate"></a>

> Code samples

```javascript
var headers = {
  'Content-Type':'application/json'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/users/authorize',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Content-Type': 'application/json'
}

r = requests.post('https://staging.citizenscience.ch/v3/users/authorize', params={

}, headers = headers)

print r.json()

```

`POST /users/authorize`

> Body parameter

```json
{
  "anonymous": false,
  "api_key": "string",
  "email": "user@example.com",
  "pwd": "string",
  "username": "string",
  "info": {}
}
```

<h3 id="post-auth-for-token-response-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[#/paths/~1users~1authorize/post/requestBody](#schema#/paths/~1users~1authorize/post/requestbody)|false|none|
|» anonymous|body|boolean|false|none|
|» api_key|body|string|false|none|
|» email|body|string(email)|false|none|
|» pwd|body|string|true|none|
|» username|body|string|false|none|

<h3 id="post-auth-for-token-response-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Token created|None|

<aside class="success">
This operation does not require authentication
</aside>

## Check existence of user

<a id="opIdcheck_user"></a>

> Code samples

```javascript

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/users/check',
  method: 'get',

  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests

r = requests.get('https://staging.citizenscience.ch/v3/users/check', params={

)

print r.json()

```

`GET /users/check`

<h3 id="check-existence-of-user-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|email|query|string|false|none|
|username|query|string|false|none|

<h3 id="check-existence-of-user-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|User exists|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|User not found|None|

<aside class="success">
This operation does not require authentication
</aside>

## Allow a user to login

<a id="opIdlogin"></a>

> Code samples

```javascript
var headers = {
  'Content-Type':'application/json'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/users/login',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Content-Type': 'application/json'
}

r = requests.post('https://staging.citizenscience.ch/v3/users/login', params={

}, headers = headers)

print r.json()

```

`POST /users/login`

> Body parameter

```json
{
  "anonymous": false,
  "api_key": "string",
  "email": "user@example.com",
  "pwd": "string",
  "username": "string",
  "info": {}
}
```

<h3 id="allow-a-user-to-login-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[#/paths/~1users~1authorize/post/requestBody](#schema#/paths/~1users~1authorize/post/requestbody)|false|none|
|» anonymous|body|boolean|false|none|
|» api_key|body|string|false|none|
|» email|body|string(email)|false|none|
|» pwd|body|string|true|none|
|» username|body|string|false|none|

<h3 id="allow-a-user-to-login-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Login successful|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Incorrect login details|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|User not found|None|

<aside class="success">
This operation does not require authentication
</aside>

## Delete user (only allowed by the user themselves)

<a id="opIddelete_user"></a>

> Code samples

```javascript
var headers = {
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/users/me',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'X-API-KEY': 'API_KEY'
}

r = requests.delete('https://staging.citizenscience.ch/v3/users/me', params={

}, headers = headers)

print r.json()

```

`DELETE /users/me`

<h3 id="delete-user-(only-allowed-by-the-user-themselves)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|User deleted|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Not authorised|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|User not found|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## Get logged in user

<a id="opIdget_user"></a>

> Code samples

```javascript
var headers = {
  'Accept':'application/json',
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/users/me',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'X-API-KEY': 'API_KEY'
}

r = requests.get('https://staging.citizenscience.ch/v3/users/me', params={

}, headers = headers)

print r.json()

```

`GET /users/me`

> Example responses

> 200 Response

```json
{
  "anonymous": false,
  "api_key": "string",
  "email": "user@example.com",
  "pwd": "string",
  "username": "string",
  "created_at": "2015-07-07T13:49:51.230000Z",
  "id": "string",
  "info": {},
  "updated_at": "2015-07-07T13:49:51.230000Z"
}
```

<h3 id="get-logged-in-user-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return user|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|User not found|None|

<h3 id="get-logged-in-user-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» anonymous|boolean|false|none|none|
|» api_key|string|false|none|none|
|» email|string(email)|false|none|none|
|» pwd|string|true|none|none|
|» username|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## Update user details (change password, add details etc)

<a id="opIdupdate_user"></a>

> Code samples

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/users/me',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'X-API-KEY': 'API_KEY'
}

r = requests.put('https://staging.citizenscience.ch/v3/users/me', params={

}, headers = headers)

print r.json()

```

`PUT /users/me`

> Body parameter

```json
{
  "anonymous": true,
  "api_key": "string",
  "email": "user@example.com",
  "pwd": "string",
  "username": "string",
  "info": {}
}
```

<h3 id="update-user-details-(change-password,-add-details-etc)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|The unique identifer for a User|
|body|body|object|false|none|
|» anonymous|body|boolean|false|none|
|» api_key|body|string|false|none|
|» email|body|string(email)|false|none|
|» pwd|body|string|false|none|
|» username|body|string|false|none|

> Example responses

> 200 Response

```json
{
  "anonymous": false,
  "api_key": "string",
  "email": "user@example.com",
  "pwd": "string",
  "username": "string",
  "created_at": "2015-07-07T13:49:51.230000Z",
  "id": "string",
  "info": {},
  "updated_at": "2015-07-07T13:49:51.230000Z"
}
```

<h3 id="update-user-details-(change-password,-add-details-etc)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|User updated|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|User not found|None|

<h3 id="update-user-details-(change-password,-add-details-etc)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» anonymous|boolean|false|none|none|
|» api_key|string|false|none|none|
|» email|string(email)|false|none|none|
|» pwd|string|true|none|none|
|» username|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## Get all projects for a user

<a id="opIdget_user_projects"></a>

> Code samples

```javascript
var headers = {
  'Accept':'application/json',
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/users/me/projects',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'X-API-KEY': 'API_KEY'
}

r = requests.get('https://staging.citizenscience.ch/v3/users/me/projects', params={

}, headers = headers)

print r.json()

```

`GET /users/me/projects`

<h3 id="get-all-projects-for-a-user-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|uid|path|string|false|none|

> Example responses

> 200 Response

```json
[
  {
    "description": "string",
    "name": "string",
    "owned_by": "string",
    "created_at": "2015-07-07T13:49:51.230000Z",
    "id": "string",
    "info": {},
    "updated_at": "2015-07-07T13:49:51.230000Z"
  }
]
```

<h3 id="get-all-projects-for-a-user-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return Projects|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|User not found|None|

<h3 id="get-all-projects-for-a-user-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[allOf]|false|none|none|
|» description|string|true|none|none|
|» name|string|true|none|none|
|» owned_by|string|false|none|The ID of the user that this project is owned by|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## Get all submissions for a user

<a id="opIdget_user_submissions"></a>

> Code samples

```javascript
var headers = {
  'Accept':'application/json',
  'X-API-KEY':'API_KEY'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/users/me/submissions',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'X-API-KEY': 'API_KEY'
}

r = requests.get('https://staging.citizenscience.ch/v3/users/me/submissions', params={

}, headers = headers)

print r.json()

```

`GET /users/me/submissions`

<h3 id="get-all-submissions-for-a-user-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|uid|path|string|false|none|

> Example responses

> 200 Response

```json
[
  {
    "content": {},
    "task_id": "string",
    "user_id": "string",
    "created_at": "2015-07-07T13:49:51.230000Z",
    "id": "string",
    "info": {},
    "updated_at": "2015-07-07T13:49:51.230000Z"
  }
]
```

<h3 id="get-all-submissions-for-a-user-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Return submissions|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|User not found|None|

<h3 id="get-all-submissions-for-a-user-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[allOf]|false|none|none|
|» content|object|false|none|none|
|» task_id|string|true|none|none|
|» user_id|string|true|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKeyHeader
</aside>

## Registration end point for a user account

<a id="opIdcreate_user"></a>

> Code samples

```javascript
var headers = {
  'Content-Type':'application/json'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/users/register',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Content-Type': 'application/json'
}

r = requests.post('https://staging.citizenscience.ch/v3/users/register', params={

}, headers = headers)

print r.json()

```

`POST /users/register`

> Body parameter

```json
{
  "anonymous": false,
  "api_key": "string",
  "email": "user@example.com",
  "pwd": "string",
  "username": "string",
  "info": {}
}
```

<h3 id="registration-end-point-for-a-user-account-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[#/paths/~1users~1authorize/post/requestBody](#schema#/paths/~1users~1authorize/post/requestbody)|false|none|
|» anonymous|body|boolean|false|none|
|» api_key|body|string|false|none|
|» email|body|string(email)|false|none|
|» pwd|body|string|true|none|
|» username|body|string|false|none|

<h3 id="registration-end-point-for-a-user-account-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created user|None|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|User exists|None|

<aside class="success">
This operation does not require authentication
</aside>

## Reset user password

<a id="opIdreset"></a>

> Code samples

```javascript

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/users/reset',
  method: 'get',
  data: '?email=string',

  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests

r = requests.get('https://staging.citizenscience.ch/v3/users/reset', params={
  'email': 'string'
)

print r.json()

```

`GET /users/reset`

<h3 id="reset-user-password-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|email|query|string|true|none|

<h3 id="reset-user-password-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Password reset|None|

<aside class="success">
This operation does not require authentication
</aside>

## Verify password reset token

<a id="opIdverify_reset"></a>

> Code samples

```javascript
var headers = {
  'Content-Type':'application/json'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/users/reset',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Content-Type': 'application/json'
}

r = requests.post('https://staging.citizenscience.ch/v3/users/reset', params={

}, headers = headers)

print r.json()

```

`POST /users/reset`

> Body parameter

```json
{
  "anonymous": false,
  "api_key": "string",
  "email": "user@example.com",
  "pwd": "string",
  "username": "string",
  "info": {}
}
```

<h3 id="verify-password-reset-token-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[#/paths/~1users~1authorize/post/requestBody](#schema#/paths/~1users~1authorize/post/requestbody)|false|none|
|» anonymous|body|boolean|false|none|
|» api_key|body|string|false|none|
|» email|body|string(email)|false|none|
|» pwd|body|string|true|none|
|» username|body|string|false|none|

<h3 id="verify-password-reset-token-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Verified and reset|None|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorised user|None|

<aside class="success">
This operation does not require authentication
</aside>

## OAuth2 token info

<a id="opIdvalidate"></a>

> Code samples

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://staging.citizenscience.ch/v3/users/validate',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://staging.citizenscience.ch/v3/users/validate', params={

}, headers = headers)

print r.json()

```

`GET /users/validate`

<h3 id="oauth2-token-info-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|key|query|string|false|none|

> Example responses

> 200 Response

```json
{}
```

<h3 id="oauth2-token-info-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Token info object|Inline|

<h3 id="oauth2-token-info-responseschema">Response Schema</h3>

<aside class="success">
This operation does not require authentication
</aside>

