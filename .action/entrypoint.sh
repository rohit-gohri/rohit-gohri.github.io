#!/bin/sh -l
set -e

cp -r /usr/src/cache/node_modules/. ./node_modules/
exec npm start