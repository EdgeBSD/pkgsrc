# $NetBSD: Makefile,v 1.60 2016/03/05 11:29:06 jperkin Exp $

DISTNAME=	kftpgrabber-0.8.1
PKGREVISION=	38
CATEGORIES=	net kde
MASTER_SITES=	http://www.kftp.org/uploads/files/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	markd@NetBSD.org
HOMEPAGE=	https://www.kde.org/applications/internet/kftpgrabber/
COMMENT=	Graphical FTP client for KDE

USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake msgfmt perl
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
SET_LIBDIR=		yes

.include "../../meta-pkgs/kde3/kde3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdebase3/buildlink3.mk"
.include "../../x11/kdelibs3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
