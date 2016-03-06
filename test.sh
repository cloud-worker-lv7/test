#!/bin/bash

OPT=`getopt -o "" -l target: -l env: -- "$@"`

echo ${OPT}

if [ "$?" -ne 0 ]; then
  error "Usage: $0 [--target VALUE] [--env VALUE]"
fi
eval set -- "$OPT"
until [ "$1" == "--" ]; do
echo $1
  case $1 in
    --target)
      target=$2
      ;;
    --env)
      env=$2
      ;;
  esac
  shift
done

echo "target is : ${target}"
echo "environs is : ${env}"
