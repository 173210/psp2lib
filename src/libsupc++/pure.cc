/*
 * Copyright (C) 2015 PSP2SDK Project
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

#include <stdio.h>
#include <exception>

extern "C" void __cxa_pure_virtual(void)
{
	fputs("pure virtual method called\n", stderr);
	std::terminate();
}

extern "C" void __cxa_deleted_virtual(void)
{
	fputs("deleted virtual method called\n", stderr);
	std::terminate ();
}
