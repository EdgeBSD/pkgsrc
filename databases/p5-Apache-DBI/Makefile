# $NetBSD: Makefile,v 1.31 2015/06/12 10:48:36 wiz Exp $

DISTNAME=	Apache-DBI-1.12
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Apache-DBI/
COMMENT=	DBI support for Apache+mod_perl
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Digest-SHA1>=2.01:../../security/p5-Digest-SHA1

PERL5_PACKLIST=		auto/Apache/DBI/.packlist

.include "../../databases/p5-DBI/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
