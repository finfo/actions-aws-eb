#!/bin/sh -l

# Workaround for git directory ownership issue with git version after 2.35.2.
# Issue is similar to https://github.com/actions/checkout/issues/766.
git config --global --add safe.directory "$GITHUB_WORKSPACE"

eval "$1"
