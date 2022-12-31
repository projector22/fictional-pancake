#!/bin/bash

WORKING_PATH=$(pwd)

printf "Rebasing dev to master in the following directory: %s\n" "$WORKING_PATH"

git -C "$WORKING_PATH" checkout master || exit 1
git -C "$WORKING_PATH" pull || exit 1
git -C "$WORKING_PATH" checkout dev || exit 1
git -C "$WORKING_PATH" rebase master || exit 1
git -C "$WORKING_PATH" push || exit 1
