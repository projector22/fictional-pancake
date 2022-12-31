#!/bin/bash

WORKING_PATH=$(pwd)

MASTER="master"
DEV="dev"

# Loop through the arguments
for arg in "$@"; do
    case $arg in
        --master=*)
            MASTER="${arg#*=}"
            shift
        ;;
        --dev=*)
            DEV="${arg#*=}"
            shift
        ;;
        *)
        # Print an error message and exit if an invalid argument is passed
            echo "Invalid argument: $arg" >&2
            exit 1
        ;;
    esac
done

printf "Rebasing $DEV to $MASTER in the following directory: %s\n" "$WORKING_PATH"

git -C "$WORKING_PATH" checkout $MASTER || exit 1
git -C "$WORKING_PATH" pull || exit 1
git -C "$WORKING_PATH" checkout $DEV || exit 1
git -C "$WORKING_PATH" rebase $MASTER || exit 1
git -C "$WORKING_PATH" push || exit 1
