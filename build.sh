#!/bin/bash

docker build -t vcpkg:2024.10.21 -f Dockerfile.vcpkg .
docker build -t vcpkg_example .
