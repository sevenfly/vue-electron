#!/bin/bash

rm -rf dist

# build modules
mkdir -p dist
chmod 755 ./scripts/build/build_release_applications.py
./scripts/build/build_release_applications.py devtools_app inspector shell formatter_worker heap_snapshot_worker \
    --input_path front_end/ \
    --output_path dist/front_end

# remove unnecessary modules
# rm -rf \
#     dist/front_end/accessibility \
#     dist/front_end/animation \
#     dist/front_end/audits \
#     dist/front_end/audits2 \
#     dist/front_end/devices \
#     dist/front_end/elements \
#     dist/front_end/emulated_devices \
#     dist/front_end/emulation \
#     dist/front_end/layers \
#     dist/front_end/layer_viewer \
#     dist/front_end/network \
#     dist/front_end/profiler \
#     dist/front_end/resources \
#     dist/front_end/sass \
#     dist/front_end/screencast \
#     dist/front_end/security \
#     dist/front_end/timeline \
#     dist/front_end/timeline_model
mkdir -p dist/front_end/start
cp front_end/start/*.html dist/front_end/start/
mkdir -p dist/front_end/start/js
cp front_end/start/js/*.js dist/front_end/start/js/

# copy necessary images
mkdir -p dist/front_end/Images
cp front_end/Images/*.png dist/front_end/Images/
cp front_end/Images/*.svg dist/front_end/Images/


# create package.json
sed 's/"name": "chrome-devtools-frontend/\0-dist/' package.json > dist/package.json


# min js
#gulp

echo 'Done.'

