# vim: ts=8 sw=8

.SUFFIXES: .png .svg

SVGFILES=cdrom.svg
PNGFILES=${SVGFILES:.svg=.png}

BATIK	=batik
BATARGS	=-m image/png -validate
%.png:	%.svg
	${BATIK} ${BATARGS} -d $@ $^

all::	${PNGFILES}

clean::

distclean clobber:: clean
	${RM} ${PNGFILES}

view::	${PNGFILES}
	for x in ${PNGFILES}; do htmlview $${x}; done
