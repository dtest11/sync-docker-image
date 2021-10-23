#!/bin/bash

echo "${INPUT_PASSWORD}" | docker login -u ${INPUT_USERNAME} --password-stdin ${INPUT_REGISTRY}

docker pull ${INPUT_IMAGE}

#分割符为/
value=`echo ${INPUT_IMAGE##*/}`

new_image=${INPUT_REPOSITORY}/${value}

docker tag ${INPUT_IMAGE} ${new_image}

docker push ${new_image}
