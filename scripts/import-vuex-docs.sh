#!/bin/sh

BRANCH="feature/oa3"
REPO="https://raw.githubusercontent.com/citizensciencecenter/vuex-c3s/"
FILE="/DOCS.md"

OUTPUT="content/docs/components/libraries/vuex-c3s/docs.md"

wget $REPO$BRANCH$FILE -O $OUTPUT
sed -i '1s/^/--- \n title: Vuex-C3S Documentation \n linkTitle: Vuex-C3S Documentation \n---\n/' $OUTPUT
