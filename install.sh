#!/bin/bash

set -e

REMOTE="git@github.com:duffn/gatsby-headless-wordpress-starter.git"
BRANCH="main"
LOCAL="gatsby-headless-wordpress-starter"

# The single option.
MARIADB=${MARIADB:-no}

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

  while [[ $# -gt 0 ]]; do
    key="$1"

    case $key in
      --mariadb)
        MARIADB=yes
        shift
        ;;
      *)
        ;;
    esac
  done

  git clone --depth=1 \
    --config transfer.fsckobjects=false \
    --config receive.fsckobjects=false \
    --config fetch.fsckobjects=false \
    --branch "$BRANCH" "$REMOTE" "$LOCAL"
  cd "$LOCAL"

  if [[ "$MARIADB" == "yes" ]]; then
    docker-compose -f docker-compose.yml -f docker-compose.mariadb.yml up --build
  else
    docker-compose -f docker-compose.yml -f docker-compose.mysql.yml up --build
  fi
}

main "$@"
