---
title: Documentation
linkTitle: "Documentation"
weight: 1
description: >
  C3S documentation
---

This documentation is provided by Hugo and using the `docsy` theme. To work with it, you will need to clone this repo, enable submodules and install Hugo. How, you ask? Let's find out.

## Installing Hugo

## Building these Docs

Using the `docsy` theme, which is a submodule in this repo.

First, you will need to enable submodules

`git submodule init`

and then 

`git submodule update --recursive`

Run `npm i` to get the necessary css packages (and `widdershins` for the backend API).

Once done, you can run `hugo` from the root and it will build. `hugo server` will allow you to view the site locally.

## Deploying

Use the `now.json` in the `public` folder and run `now --prod`.
