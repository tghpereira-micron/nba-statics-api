#!/bin/sh
set -e

if [ "$NODE_ENV" = "development" ]; then
  npm run db:setup:development:${DATABASE_ENGINE}
else
  npm run db:setup:production:${DATABASE_ENGINE}
fi

if [ "$NODE_ENV" = "development" ]; then
  exec npm run dev
else
  exec npm run start
fi
