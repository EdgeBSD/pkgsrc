# $NetBSD: Makefile,v 1.8 2015/04/25 14:20:30 tnn Exp $

PKGNAME=	bossa-20140109
DISTNAME=	b-o-s-s-a-code-05bfcc39bc0453c3028b1161175b95a81af7a901
PKGREVISION=	2
CATEGORIES=	comms
EXTRACT_SUFX=	.zip

MAINTAINER=	reinoud@NetBSD.org
HOMEPAGE=	http://sourceforge.net/projects/b-o-s-s-a/
COMMENT=	Open source SAM-BA compatible Atmel ARM programmer
LICENSE=	gnu-gpl-v3

INSTALLATION_DIRS=      bin

LDFLAGS+=	${COMPILER_RPATH_FLAG}${BUILDLINK_PREFIX.readline}/lib \
		-L${BUILDLINK_PREFIX.readline}/lib
ALL_ENV+=	COMMON_LDFLAGS=${LDFLAGS:Q}

post-patch:
	${CP} files/NetBSD* ${WRKSRC}/src/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/* ${DESTDIR}${PREFIX}/bin


USE_LANGUAGES=	c++
USE_TOOLS=	gmake

.include "../../mk/compiler.mk"
.if !empty(PKGSRC_COMPILER:Mclang)
CXXFLAGS+=	-Wno-error=tautological-compare -Wno-error=unused-local-typedef
.endif

.include "../../devel/readline/buildlink3.mk"
.include "../../x11/wxGTK28/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
