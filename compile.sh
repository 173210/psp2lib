#!/bin/sh -e
# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

echo Compiling libgcc
make -C out/gcc all-target-libgcc "$@"
echo Done compiling libgcc

echo Compiling PSP2 libraries
make -C out/lib "$@"
echo Done compiling libraries

echo Compiling PSP2 libraries enabling FPU
make -C out/lib/fpu "$@"
echo Done compiling libraries enabling FPU
