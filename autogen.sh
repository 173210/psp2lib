#!/bin/sh
# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

if ! test -d out; then
	mkdir out
fi

cd out

if ! test -d gcc; then
	mkdir gcc
fi

echo Running gcc/configure
(cd gcc; ../../gcc/configure --disable-libstdcxx-verbose --with-newlib --with-cpu=cortex-a9 --with-float=hard --with-fpu=neon-fp16 --target=arm-none-eabi "$@")
echo Done running gcc/configure
