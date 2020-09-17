#!/usr/bin/env bash

# Note: can also put this into a yaml file

argocd app create applications-dev \
  --dest-namespace default \
  --dest-server https://kubernetes.default.svc \
  --repo https://github.com/arthurk/argocd-test.git \
  --sync-policy automated \
  --revision HEAD \
  --path environments/dev/
