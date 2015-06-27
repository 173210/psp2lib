#!/bin/sh
# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

PSP2LIB="$@/arm-none-eabi/lib/psp2"
install -d $PSP2LIB $PSP2LIB/fpu $PSP2LIB/thumb

cd out/gcc/arm-none-eabi
install libgcc/libgcc.a "$PSP2LIB/libgcc.a"
install libstdc++-v3/libsupc++/.libs/libsupc++.a "$PSP2LIB/libsupc++.a"

cd fpu
install libgcc/libgcc.a "$PSP2LIB/fpu/libgcc.a"
install libstdc++-v3/libsupc++/.libs/libsupc++.a "$PSP2LIB/fpu/libsupc++.a"
cd ..

cd thumb
install libgcc/libgcc.a "$PSP2LIB/thumb/libgcc.a"
install libstdc++-v3/libsupc++/.libs/libsupc++.a "$PSP2LIB/thumb/libsupc++.a"
cd ../../..

make -C lib install
make -C lib/fpu install
