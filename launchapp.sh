#!/bin/bash

apptainer exec --env DISPLAY=$DISPLAY --bind /lcars/:/lcars --env-file virtuoso.env /lcars/software/linux/x86_64/apptainer/cadence.sif virtuoso
