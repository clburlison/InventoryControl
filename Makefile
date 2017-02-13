# Makefile for InventoryControl related tasks

PKGTITLE="InventoryControl"
PKGVERSION=1.0.3
PKGID=com.clburlison.InventoryControl

#################################################

##Help - Show this help menu
help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

##  clean - Clean up temporary working directories
clean:
	rm -f ./InventoryControl*.pkg

##  pkg - Create a package using pkgbuild
pkg: clean
	pkgbuild --root pkgroot --scripts scripts --identifier ${PKGID} --version ${PKGVERSION} --ownership recommended ./${PKGTITLE}-${PKGVERSION}.pkg
