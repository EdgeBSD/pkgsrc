# $NetBSD: Makefile,v 1.33 2016/04/17 12:37:55 wen Exp $
#

DISTNAME=	IMAP-Admin-1.6.8
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	mail perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=IMAP/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/IMAP-Admin/
COMMENT=	Perl5 module for administration of RFC-2060 IMAP servers
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/IMAP/Admin/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
