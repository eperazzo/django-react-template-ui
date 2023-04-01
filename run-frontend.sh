#!/bin/bash

docker run -u=1000:1000 -v $(pwd):/app -w=/app -p 3000:3000 --rm --name=django-react-template-frontend node bash -c "yarn install && yarn run start"