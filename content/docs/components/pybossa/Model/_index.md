---
title: "Model"
linkTitle: "Model"
weight: 4
description: >
  Here's all the extensions/modifications made in Pybossa's Model. E.g. Comments, User etc.
---
* Github repo: https://github.com/CitizenScienceCenter/pybossa
* Branch: develop
* Path: pybossa/model
---

## Comments

pybossa/model/comments.py

New model added to support forum capabilities in project builder.

> Code samples

```python
class Comments(db.Model, DomainObject):

    __tablename__ = 'comments'

    #: Comment.ID
    id = Column(Integer, primary_key=True)
    #: UTC timestamp when the comment was created.
    created = Column(TIMESTAMP, default=make_timestamp)
    #: UTC timestamp when the comment was updated.
    updated = Column(TIMESTAMP, default=make_timestamp)
    #: Comment owner_id
    owner_id = Column(Integer, ForeignKey('user.id'))
    #: Project.ID that this comment is associated with.
    project_id = Column(Integer, ForeignKey('project.id'))
    #: parent ID - Separates topic from comments. Null for topics, Topic id for replies
    parent = Column(Integer)
    #: content
    content = Column(MutableDict.as_mutable(JSONB), default=dict())
    #: text
    text = Column(Text)
    #: Comment info field formatted as JSON
    info = Column(MutableDict.as_mutable(JSONB), default=dict())

```

<aside class="success">
</aside>

## Users

pybossa/model/user.py

New model added to support forum capabilities in project builder.

> Code

```python
#OLD
fullname = Column(Unicode(length=500), nullable=False)
#NEW
fullname = Column(Unicode(length=500), nullable=True)
```

<aside class="success">
#nullable field has been replaced to accept null values. This of course depends on the client requirements. Not sure so set value to True to cover all cases!
</aside>
