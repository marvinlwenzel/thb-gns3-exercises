#!/bin/bash

OWNER=marvinlwenzel
TAG="latest"
if [ -z "$1" ]
then
      >&2 echo "No image name given"
      exit 1
else
      if [ "$1" == "--all" ]
      then
          >&2 echo "--all not yet implemented"
          exit 1
      else
          NAME=$1
      fi
fi
if [ -z "$2" ]
then
      echo "Using default tag $TAG"
else
      TAG=$2
fi
docker build $1 -t $OWNER/$NAME:$TAG
