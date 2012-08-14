################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                           GNU MAKEFILE FOR LINASM                            #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2012, Jack Black #
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
infodir			:= $(datarootdir)/info
docdir			:= $(datarootdir)/doc/pkg_name
htmldir			:= $(docdir)
pdfdir			:= $(docdir)
dvidir			:= $(docdir)
psdir			:= $(docdir)
mandir			:= $(datarootdir)/man
man1dir			:= $(mandir)/man1
man2dir			:= $(mandir)/man2
man3dir			:= $(mandir)/man3
man4dir			:= $(mandir)/man4
man5dir			:= $(mandir)/man5
man6dir			:= $(mandir)/man6
man7dir			:= $(mandir)/man7
man8dir			:= $(mandir)/man8
man1ext			:= .1
man2ext			:= .2
man3ext			:= .3
man4ext			:= .4
man5ext			:= .5
man6ext			:= .6
man7ext			:= .7
man8ext			:= .8

#******************************************************************************#
#       Utilities configuration                                                #
#******************************************************************************#

# Utilities names
AR				:= ar
AS				:= build/fasm
INSTALL			:= install

# Utilities flags
ARFLAGS			:= rs
ASFLAGS			:=
INSTALLFLAGS	:=

#******************************************************************************#
#       Makefile variables                                                     #
#******************************************************************************#
vpath	%.h		$(incdir)
vpath	%.inc	$(srcdir)
vpath	%.asm	$(srcdir)

INSTALL_PROGRAM := $(INSTALL)
INSTALL_DATA	:= $(INSTALL) -m 644

lib				:= liblinasm.a
includes		:= $(notdir $(wildcard $(incdir)/*.h))
objects			:= $(notdir $(patsubst %.asm, %.o, $(wildcard $(srcdir)/*.asm)))

#******************************************************************************#
#       Makefile targets                                                       #
#******************************************************************************#
.SUFFIXES:
.PHONY: uninstall clean distclean mostlyclean maintainer-clean

all: $(lib)

$(lib): $(objects)
	$(AR) $(ARFLAGS) $@ $?

%.o: %.asm
	$(AS) $(ASFLAGS) $< $@

Time.o: Errno.inc Syscall.inc

install: $(lib) $(includes)
	$(INSTALL) -d $(INSTALLFLAGS) $(DESTDIR)$(includedir)
	$(INSTALL_DATA) -Dp $(INSTALLFLAGS) $(lib) $(DESTDIR)$(libdir)/$(lib)
	cd $(incdir) && $(INSTALL_DATA) -p $(INSTALLFLAGS) $(includes) $(DESTDIR)$(includedir)

uninstall:
	-cd $(DESTDIR)$(libdir) && rm -f $(lib)
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
