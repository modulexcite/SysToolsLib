###############################################################################
#									      #
#   File name:	    update.mak						      #
#									      #
#   Description:    Specific rules for building update.exe.		      #
#									      #
#   Notes:	    Under Vista and Windows 7, update.exe, setup.exe, and     #
#                   install.exe are reserved name prefixes.                   #
#                   Windows automatically attempts to switch the machine to   #
#                   Administrator mode when a program named this way is run.  #
#									      #
#		    To prevent this, a signed application manifest must be    #
#                   included in the .exe, specifiying that such a privilege   #
#                   escalation is not necessary.                              #
#									      #
#   History:								      #
#    2010-03-15 JFL Created this file.					      #
#									      #
###############################################################################

!IF "$(T)"=="DOS"
SOURCES=update.c
!ENDIF

!IF "$(T)"=="WIN32"
SOURCES=update.c update.rc
LFLAGS=$(LFLAGS) /MANIFEST
!ENDIF

!IF "$(T)"=="WIN64"
SOURCES=update.c update.rc
LFLAGS=$(LFLAGS) /MANIFEST
!ENDIF

