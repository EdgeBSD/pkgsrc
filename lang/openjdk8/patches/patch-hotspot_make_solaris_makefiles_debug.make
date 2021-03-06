$NetBSD: patch-hotspot_make_solaris_makefiles_debug.make,v 1.1 2015/07/03 20:40:59 fhajny Exp $

GCC support.

--- hotspot/make/solaris/makefiles/debug.make.orig	2015-02-02 15:32:37.000000000 +0000
+++ hotspot/make/solaris/makefiles/debug.make
@@ -49,7 +49,11 @@ MAPFILE = $(GAMMADIR)/make/solaris/makef
 
 # This mapfile is only needed when compiling with dtrace support,
 # and mustn't be otherwise.
-MAPFILE_DTRACE = $(GAMMADIR)/make/solaris/makefiles/mapfile-vers-$(TYPE)
+ifdef USE_GCC
+  MAPFILE_DTRACE = $(GAMMADIR)/make/solaris/makefiles/mapfile-vers-$(TYPE).gcc
+else
+  MAPFILE_DTRACE = $(GAMMADIR)/make/solaris/makefiles/mapfile-vers-$(TYPE)
+endif # USE_GCC
 
 VERSION = debug
 SYSDEFS += -DASSERT
