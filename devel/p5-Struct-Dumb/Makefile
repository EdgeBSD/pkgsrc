# $NetBSD: Makefile,v 1.1 2015/09/01 12:59:12 mef Exp $

DISTNAME=	Struct-Dumb-0.03
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	http://search.cpan.org/CPAN/authors/id/P/PE/PEVANS/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/CPAN/authors/id/P/PE/PEVANS/
COMMENT=	Make simple lightweight record-like structures
LICENSE=	${PERL5_LICENSE}

# for make test
BUILD_DEPENDS+=	p5-Test-Fatal-[0-9]*:../../devel/p5-Test-Fatal

# TODO: Look for the dependencies in Build.PL.

PERL5_MODULE_TYPE=	Module::Build
PERL5_PACKLIST=		auto/Struct/Dumb/.packlist
USE_LANGUAGES=		# none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
