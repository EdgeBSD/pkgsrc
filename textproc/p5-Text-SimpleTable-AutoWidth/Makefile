# $NetBSD: Makefile,v 1.1 2016/04/15 11:47:49 wiz Exp $

DISTNAME=	Text-SimpleTable-AutoWidth-0.09
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Text/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/~cub/Text-SimpleTable-AutoWidth/
COMMENT=	Simple Eyecandy ASCII Tables with auto-width selection
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Text-SimpleTable-[0-9]*:../../textproc/p5-Text-SimpleTable
DEPENDS+=	p5-Moo-[0-9]*:../../devel/p5-Moo

USE_LANGUAGES=	# empty
PERL5_PACKLIST= auto/Text/SimpleTable/AutoWidth/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
