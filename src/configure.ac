#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

AC_INIT(PSP2SDK, dirty-m4_esyscmd_s([git describe --always]),
	https://github.com/psp2dev/psp2lib/issues)
AC_CONFIG_SRCDIR(start/crt0.c)

AM_INIT_AUTOMAKE(foreign -Wno-portability)

AC_ARG_WITH(fpu, AS_HELP_STRING(--with-fpu, Use FPU), with_fpu=yes)
AC_ARG_WITH(headers)

CFLAGS="$CFLAGS -Wall -nostdlib -specs=psp2.specs"
psp2dir="$prefix/arm-none-eabi/lib/psp2"
if test "$with_fpu" = yes; then
	CFLAGS="$CFLAGS -mfloat-abi=hard"
	psp2dir="$psp2dir/fpu"
fi

CXXFLAGS="$CXXFLAGS -I$prefix/arm-none-eabi/include $CFLAGS"
AC_SUBST(psp2dir, $psp2dir)

# Checks for programs.
AC_PROG_CC
AC_PROG_CXX
AC_PROG_RANLIB
if test "$RANLIB" = :; then
	AC_MSG_ERROR(ranlib not found.)
fi

AC_CHECK_TOOL(AR, ar, :)
AM_PROG_AS

# Checks for header files.
AC_CHECK_HEADERS(psp2/kernel/loadcore.h psp2/kernel/threadmgr.h	\
	psp2/moduleinfo.h psp2/types.h stddef.h stdint.h, ,
	AC_MSG_ERROR(header files not found.))

# Checks for typedefs, structures, and compiler characteristics.
AC_CHECK_TYPES(uint32_t, , AC_MSG_ERROR(uint32_t not defined.),
	[#include <stdint.h>])

AC_CONFIG_FILES([Makefile libsupc++/Makefile libsysbase/Makefile start/Makefile])
AC_OUTPUT
