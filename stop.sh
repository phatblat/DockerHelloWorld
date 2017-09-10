#!/bin/bash

docker stop $(docker ps --format "{{.ID}}")

