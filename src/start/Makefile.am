# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

all: crt0.o

.c.o:
	$(CC) $(CCASFLAGS) -flto $< -c -o $@

install-exec-hook: crt0.o
	$(mkinstalldirs) @psp2dir@
	$(INSTALL_DATA) crt0.o @psp2dir@/crt0.o

uninstall-hook:
	rm -f @psp2dir@/crt0.o

CLEANFILES = crt0.o
