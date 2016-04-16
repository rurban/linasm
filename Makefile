################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                           GNU MAKEFILE FOR LINASM                            #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2016, Jack Black #
################################################################################

#******************************************************************************#
#       Installation directories                                               #
#******************************************************************************#

# Project directories
incdir			:= include
srcdir			:= source

# System directories
prefix			:= /usr/local
exec_prefix		:= $(prefix)
sysconfdir		:= $(prefix)/etc
includedir		:= $(prefix)/include
datarootdir		:= $(prefix)/share
localstatedir	:= $(prefix)/var
sbindir			:= $(exec_prefix)/sbin
bindir			:= $(exec_prefix)/bin
libdir			:= $(exec_prefix)/lib
datadir			:= $(datarootdir)
localedir		:= $(datarootdir)/locale
icondir			:= $(datarootdir)/icons
infodir			:= $(datarootdir)/info
docdir			:= $(datarootdir)/doc/pkg_name
mandir			:= $(datarootdir)/man
man1dir			:= $(mandir)/man1
man2dir			:= $(mandir)/man2
man3dir			:= $(mandir)/man3
man4dir			:= $(mandir)/man4
man5dir			:= $(mandir)/man5
man6dir			:= $(mandir)/man6
man7dir			:= $(mandir)/man7
man8dir			:= $(mandir)/man8
htmldir			:= $(docdir)
pdfdir			:= $(docdir)
dvidir			:= $(docdir)
psdir			:= $(docdir)
man1ext			:= .1
man2ext			:= .2
man3ext			:= .3
man4ext			:= .4
man5ext			:= .5
man6ext			:= .6
man7ext			:= .7
man8ext			:= .8

#******************************************************************************#
#       Utility configuration                                                  #
#******************************************************************************#

# Utility names
AS				:= build/fasm
LD				:= ld
LN				:= ln
INSTALL			:= install

# Utility flags
ASFLAGS			:=
LDFLAGS			:=
LNFLAGS			:=
INSTALLFLAGS	:=

#******************************************************************************#
#       Makefile variables                                                     #
#******************************************************************************#
vpath	%.h		$(incdir)
vpath	%.inc	$(srcdir)
vpath	%.asm	$(srcdir)

INSTALL_PROGRAM := $(INSTALL)
INSTALL_DATA	:= $(INSTALL) -m 644

lib				:= liblinasm.so
ver				:= 1.1
vlib			:= $(lib).$(ver)
includes		:= $(notdir $(wildcard $(incdir)/*.h))
objects			:= $(notdir $(patsubst %.asm, %.o, $(wildcard $(srcdir)/*.asm)))

#******************************************************************************#
#       Makefile targets                                                       #
#******************************************************************************#
.SUFFIXES:
.PHONY: uninstall clean distclean mostlyclean maintainer-clean

all: $(lib)

$(lib): $(objects)
	$(LD) --shared $(LDFLAGS) $^ -o $@

%.o: %.asm
	$(AS) $(ASFLAGS) $< $@

Accumulator.o:		Macro.inc Syscall.inc
Approximation.o:	Macro.inc
Array.o:			Macro.inc
Btree.o:			Macro.inc Syscall.inc
Deque.o:			Macro.inc Syscall.inc
FHT.o:				Macro.inc
Filter.o:			Macro.inc
Hash.o:				Macro.inc Syscall.inc
Heap.o:				Macro.inc Syscall.inc
List.o:				Macro.inc Syscall.inc
Math.o:				Macro.inc
Matrix.o:			Macro.inc
Numbers.o:			Macro.inc
Pool.o:				Macro.inc Syscall.inc
Statistics.o:		Macro.inc
String.o:			Macro.inc
Time.o:				Errno.inc Syscall.inc
Vector.o:			Macro.inc Syscall.inc
VectorXD.o:			Macro.inc
Window.o:			Macro.inc

install: $(lib) $(includes)
	$(INSTALL_DATA) -Dp $(INSTALLFLAGS) $(lib) $(DESTDIR)$(libdir)/$(vlib)
	$(LN) -sf $(DESTDIR)$(libdir)/$(vlib) $(DESTDIR)$(libdir)/$(lib)
	cd $(incdir) && $(foreach file, $(includes), $(INSTALL_DATA) -Dp $(INSTALLFLAGS) $(file) $(DESTDIR)$(includedir)/$(file);)

uninstall:
	-cd $(DESTDIR)$(libdir) && rm -f $(lib) $(vlib)
	-cd $(DESTDIR)$(includedir) && rm -f $(includes)

clean:
	-rm -f $(lib) $(objects)

distclean:
	-rm -f $(lib) $(objects)

mostlyclean:
	-rm -f $(lib) $(objects)

maintainer-clean:
	-rm -f $(lib) $(objects)

################################################################################
#                                 END OF FILE                                  #
################################################################################
