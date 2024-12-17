#!/usr/bin/env bash

cd $1 && docker compose stop && docker compose rm -f && cd .. && rm -rf $1
