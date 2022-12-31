#!/bin/bash

WORKING_PATH=pwd

git -C $WORKING_PATH checkout master
git -C $WORKING_PATH pull
git -C $WORKING_PATH checkout dev
git -C $WORKING_PATH rebase master
git -C $WORKING_PATH push
