# $NetBSD: Makefile,v 1.2 2016/05/23 10:50:01 youri Exp $

DISTNAME=	lxterminal-0.2.0
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lxde/}

MAINTAINER=	youri@NetBSD.org
HOMEPAGE=	http://www.lxde.org/
COMMENT=	Desktop-independent VTE-based terminal emulator with tabs
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_TOOLS+=	intltool pkg-config

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/vte/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
