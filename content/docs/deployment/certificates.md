---
title: SSL Certificates
linkTitle: SSL Certificates
---

## Now.sh

`Now` handles all of the SSL for static sites, BUT you will need to be ensure that the domain is routed correctly to `Now`. This can be seen under the `domains` section of the site and DNS zones can be edited at `hostpoint.ch`

## LetsEncrypt

All servers within ScienceCloud could be hosting a domain, and we use LetsEncrypt for this. The command line tool, `certbot` will handle this for us.

### Installing

```
apt install certbot python-certbot-nginx
```

### Usage

```
certbot --nginx
```

NB. Always choose to Redirect and make sure to restart nginx (`service nginx restart`) if you make any config changes

## Kubernetes

Kubernetes uses `cert-manager` to handle certificates and this needs a `ClusterIssuer` role that links to `LetsEncrypt`. Documentation can be found here or an ansible script will explain it [here](https://github.com/encima/ansible_k8s/blob/master/6_nginx.yaml)

Note, it is easier to use `helm` to install cert-manager, but it is **not** an automated process. When uninstalling, be sure to clean up hanging namespaces and secrets!

## OpenShift

OpenShift has auto certificate handling but it can also use pre-generated `pem` files, these must be added when you create a `Route`
