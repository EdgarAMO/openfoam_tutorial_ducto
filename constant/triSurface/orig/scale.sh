#!/bin/bash

. $WM_PROJECT_DIR/bin/tools/RunFunctions

# scale from centimeters to meters:
surfaceTransformPoints -scale '(0.01 0.01 0.01)' _inlet.stl inlet.stl
surfaceTransformPoints -scale '(0.01 0.01 0.01)' _outlet1.stl outlet1.stl
surfaceTransformPoints -scale '(0.01 0.01 0.01)' _outlet2.stl outlet2.stl
surfaceTransformPoints -scale '(0.01 0.01 0.01)' _walls.stl walls.stl
