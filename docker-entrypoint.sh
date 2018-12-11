#!/bin/bash

set -e

case "$1" in
  frontend)
    rake start_frontend
  ;;
  backend)
    until psql postgres://postgres:password@db -c '\q'; do
      >&2 echo "Postgres is unavailable - sleeping"
      sleep 1
    done

    >&2 echo "Postgres is up!"

    bundle install --jobs=4
    rm -rf /tmp/pids/server.pid
    rake db:reset && rake db:migrate && rake db:seed && rake start_backend
  ;;
esac