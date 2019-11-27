---
title: Secrets and Passwords
linkTitle: Secrets and Passwords
---

## Citizen Science Account

For management of these services, we use the `dev@citizenscience.ch` as an entry point. A password should have been made available to you, and you can use this to give you Github access, as well as access to packages and other accounts.

More esoteric passwords (accounts, email info) can be found in the [Bitwarden](https://bitwarden.com) account for `dev@citizenscience.ch`

## Github

You will need to become a member of the `CitizenScienceCenter` organization on Github. Ask one of the existing members for them to approve your access.

## Secrets and Files in Git Repositories with Sensitive Information

We use [git secret](git-secret.io) to handle this and you can find install info [here](https://git-secret.io/installation)

### Adding yourself to the `git secret`

You will need to ask someone who is already on the repository and send them your public GPG key

That person can then run:

```
gpg --import <KEYNAME>
git secret tell <EMAIL>
git secret reveal -f
git secret hide -d
```

Now you will be able to access the encrypted files

## Servers

All servers on ScienceCloud can only be accessed by providing an SSH key. You will need to ask someone who has access to that server to add your SSH key.

## Kubernetes

You will need to extract the `kubeconf` from one of the nodes and add it to `~/.kube/config`

## OpenShift

You will need to ask [Jens-Christian](mailto:jens-christian.fischer@switch.ch) to be added to the `C3S` project on `SwitchEngines`. Once, you have access, you will be able to use the `OpenShift` interface OR click on your user in the top right of the interface and select `copy login`, run that in your CLI and you can then use the `oc` tool to interface with OpenShift

