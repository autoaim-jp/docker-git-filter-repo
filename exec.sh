#!/bin/bash

pushd ~/list/simple/movie-rabbitmq/

docker run --rm -v $(pwd):/repo git-filter-repo \
    git filter-repo --path service/movieEngine/src/lib/xmodule-movie-core/ --invert-paths

popd

