# $NetBSD: Makefile,v 1.15 2016/04/09 14:18:48 mef Exp $

DISTNAME=	Contextual-Return-0.004008
# insert dot between each 3 digits
PKGNAME=	p5-${DISTNAME:C/([0-9][0-9][0-9])([0-9][0-9][0-9])/\1.\2/}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/D/DC/DCONWAY/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Contextual-Return/
COMMENT=	Perl 5 module to create context-senstive return values
LICENSE=	${PERL5_LICENSE}

#DEPENDS+=	{perl>=5.10.0,p5-version-[0-9]*}:../../devel/p5-version
DEPENDS+=	p5-Want-[0-9]*:../../devel/p5-Want

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Contextual/Return/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
