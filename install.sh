#!/bin/bash

set -e

REMOTE="git@github.com:duffn/gatsby-wordpress-docker.git"
BRANCH="main"
LOCAL="gatsby-wordpress-docker"

command_exists() {
  command -v "$@" >/dev/null 2>&1
}

main() {
  if ! command_exists git; then
    echo "Please install git before proceeding."
    exit 1
  fi

  if ! command_exists docker; then
    echo "Please install Docker before proceeding."
    exit 1
  fi

  if ! command_exists docker-compose; then
    echo "Please install docker-compose before proceeding."
    exit 1
  fi

  git clone --depth=1 \
    --config transfer.fsckobjects=false \
    --config receive.fsckobjects=false \
    --config fetch.fsckobjects=false \
    --branch "$BRANCH" "$REMOTE" "$LOCAL"
  docker-compose up --build
}

main
