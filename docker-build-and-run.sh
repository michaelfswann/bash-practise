#!/bin/bash

# script to to build and run images in one
# example use bash ../bash-practise/docker-build-and-run.sh -a python-server -b 8080 -c 8080

print_usage() {
  printf "Usage: ..."
}

while getopts 'a:b:c' flag; do
  case "${flag}" in
    a) IMAGE_NAME="${OPTARG}" ;;
    b) MAP_CONTAINER_PORT="${OPTARG}" ;;
    c) MAP_HOST_PORT="${OPTARG}" ;;
    *) print_usage
       exit 1 ;;
  esac
done

# build docker image
docker build -t "${IMAGE_NAME}" .

# run container with name and ports using most recently built image in docker images
docker run --rm -it --name "${IMAGE_NAME}" -p "${MAP_HOST_PORT}":"${MAP_CONTAINER_PORT}" "$(docker images | awk '{print $3}' | awk 'NR==2')"
