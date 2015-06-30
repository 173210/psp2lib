#!/bin/sh -e
# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
echo
echo "Running PSP2LIB Install..."
echo

PSP2LIB="$@/arm-none-eabi/lib/psp2"

echo
echo "Installing run-time and support libraries... 1/3"
echo

cd out/gcc/arm-none-eabi
install libgcc/libgcc.a "$PSP2LIB"

echo
echo "Installing run-time and support libraries... 2/3"
echo

install fpu/libgcc/libgcc.a "$PSP2LIB/fpu"

echo
echo "Installing run-time and support libraries... 3/3"
echo

install thumb/libgcc/libgcc.a "$PSP2LIB/thumb"
cd ../..

echo
echo "Invoking make..."
echo

make -C lib install
make -C lib/fpu install

echo
echo "Done! Please review your terminal."
echo
