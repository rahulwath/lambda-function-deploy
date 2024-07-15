#!/bin/bash

# For packaging the build artifacts
mkdir artifacts
mv source-code artifacts
mv terraform artifacts
cd artifacts
zip -r $CI_COMMIT_TAG.zip *