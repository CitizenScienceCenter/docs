---
title: "Static Sites"
linkTitle: "Static Sites"
weight: 2
description: >
  Generating and deploying sites
---

All static sites are hosted by `now.sh` and require you to be a member of the [team](https://zeit.co/c3s). Please contact someone at the center to get access.

## Installing

To deploy, you will need the `now CLI` and, to get it, you will need a recent version of `npm`.

```
npm install -g now@latest
```

Then you can run `now teams ls` to be sure you are part of `c3s` and then `now switch c3s`

## Deploying

To deploy a site, simply run `now` in the root directory or `npm run deploy`

### Production

As our sites perform prerendering, you will need to build the site on your development machine with `npm run build`. Once built, enter the `dist` directory (or wherever you have configured to build to) and run `now --prod`.

## Config

`Now` is designed to be minimal config but some may still be needed. You can provide a `now.json`, which may look like this:

```javascript
{
  "name": "project-builder",
  "version": 2,
  "builds": [
    {
      "src": "package.json",
      "use": "@now/static-build"
    }
  ],
  "routes": [
    {
      "src": "/(js|css|img)/.*",
      "headers": { "cache-control": "max-age=31536000, immutable" }
    },
    { "handle": "filesystem" },
    { "src": ".*", "dest": "/" }
  ],
  "alias": "project-builder.staging.citizenscience.ch"
}
```

This file would build the site on deployment. Removing the `builds` section will then deploy just a static site. The file **MUST** be in the directory you want now to run from. For example, one in the root directory and one in your `dist` directory.
