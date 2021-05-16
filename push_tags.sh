#!/bin/bash

tags=$(git tag --sort=-creatordate | grep $1)
echo $tags

for t in $tags; do
  echo "Pushing $t to $2"
  git push $2 $t
done


