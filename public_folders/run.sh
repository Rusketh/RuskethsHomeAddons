#!/usr/bin/with-contenv bashio

set +u

export PORT=$(bashio::addon.port 8080)
export OPTIONS="./data/options.json"

bashio::log.info "Starting http service on port $PORT (external port is " $(bashio::addon.port) "."

exec npm run start;
