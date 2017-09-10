#!/bin/bash

docker run -d -p 4000:80 friendlyhello
open http://localhost:4000
curl http://localhost:4000

