# $NetBSD: Makefile,v 1.3 2016/05/03 12:03:41 mef Exp $

DISTNAME=	Git-Version-Compare-1.002
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Git/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Git-Version-Compare/
COMMENT=	Functions to compare Git versions
LICENSE=	${PERL5_LICENSE}

# for make test
BUILD_DEPENDS+=	p5-namespace-clean-[0-9]*:../../devel/p5-namespace-clean

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Git/Version/Compare/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
