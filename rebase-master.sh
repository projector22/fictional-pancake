#!/bin/bash

WORKING_PATH=$(pwd)

MASTER="master"
DEV="dev"

while getopts ":m:d:" opt; do
  echo $OPTARG
  case $opt in
    m) MASTER=$OPTARG;;
    d) DEV=$OPTARG;;
    *) echo "Invalid option: -$OPTARG" >&2; exit 1;;
  esac
done

printf "Rebasing $DEV to $MASTER in the following directory: %s\n" "$WORKING_PATH"

git -C "$WORKING_PATH" checkout $MASTER || exit 1
git -C "$WORKING_PATH" pull || exit 1
git -C "$WORKING_PATH" checkout $DEV || exit 1
git -C "$WORKING_PATH" rebase $MASTER || exit 1
git -C "$WORKING_PATH" push || exit 1
