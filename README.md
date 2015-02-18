
Description
===========

These are some basic tools to generate and compile OpenWrt opkg packages.

How to make an .ipk
===================

The first tool you would use is **opkg-make**: it generates the
boilerplate files needed to build the package (much like *dh_make*
does). Then, using **opkg-build** you actually build it.

Generate package files
----------------------

To pack your software, you need at least two files: a control and a
install, both similar to the Debian counterparts.

The control file holds information about the package: its name,
versión, depends... The install file is used to specify the files you
want to include in your package, and its location.

To geneate these and other files, use opkg-make, indicating the name
of the package and the versión, using the -p flag:

    $ opkg-make -p hello_1.0

This will generate a directory, called opkg, and inside it, a bunch of
files. The mentioned control, and some scripts to run when installing
or removing the package (postinst.ex, postrm.ex, preinst.ex,
prerm.ex). These are example files, if you want to include them you
need to remove the .ex extension. Otherwise, just remove them.

Build the package
-----------------

You just need to run:

    $ opkg-build

This will generate a file called name\_ver.ipk. Send this package to
you carambola and install it with opkg.
