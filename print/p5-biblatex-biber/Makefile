# $NetBSD: Makefile,v 1.15 2016/04/23 21:37:47 markd Exp $

VER=		2.4
DISTNAME=	biblatex-biber
PKGNAME=	p5-biblatex-biber-${VER}
CATEGORIES=	print
MASTER_SITES=	http://sourceforge.net/projects/biblatex-biber/files/biblatex-biber/${VER}/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://biblatex-biber.sourceforge.net/
COMMENT=	Replacement of bibtex for users of BibLaTeX
LICENSE=	gnu-gpl-v1 OR artistic-2.0

DIST_SUBDIR=		${DISTNAME}-${VER}
WRKSRC=			${WRKDIR}/${DISTNAME}-${VER}

PERL5_MODULE_TYPE=	Module::Build
PERL5_PACKLIST=		auto/Biber/Config/.packlist
USE_LANGUAGES=		# empty
USE_TOOLS+=		perl
REPLACE_PERL+=		bin/biber

DEPENDS+=		p5-Class-Accessor-[0-9]*:../../devel/p5-Class-Accessor
DEPENDS+=		p5-Data-Compare-[0-9]*:../../devel/p5-Data-Compare
DEPENDS+=		p5-Data-Dump-[0-9]*:../../devel/p5-Data-Dump
DEPENDS+=		p5-Data-Uniqid-[0-9]*:../../devel/p5-Data-Uniqid
DEPENDS+=		p5-Date-Simple-[0-9]*:../../devel/p5-Date-Simple
DEPENDS+=		p5-File-Slurp-[0-9]*:../../devel/p5-File-Slurp
DEPENDS+=		p5-List-AllUtils-[0-9]*:../../devel/p5-List-AllUtils
DEPENDS+=		p5-List-MoreUtils-[0-9]*:../../devel/p5-List-MoreUtils
DEPENDS+=		p5-Log-Log4perl-[0-9]*:../../devel/p5-Log-Log4perl
DEPENDS+=		p5-Regexp-Common-[0-9]*:../../textproc/p5-Regexp-Common
DEPENDS+=		p5-Text-Roman-[0-9]*:../../textproc/p5-Text-Roman
DEPENDS+=		p5-Unicode-Collate>=1.14:../../converters/p5-Unicode-Collate
DEPENDS+=		p5-Unicode-Normalize>=1.25:../../converters/p5-Unicode-Normalize
DEPENDS+=		p5-XML-LibXML>=1.70:../../textproc/p5-XML-LibXML
DEPENDS+=		p5-XML-LibXML-Simple-[0-9]*:../../textproc/p5-XML-LibXML-Simple
DEPENDS+=		p5-XML-LibXSLT-[0-9]*:../../textproc/p5-XML-LibXSLT
DEPENDS+=		p5-XML-Writer-[0-9]*:../../textproc/p5-XML-Writer
DEPENDS+=		p5-XML-Writer-String-[0-9]*:../../textproc/p5-XML-Writer-String
DEPENDS+=		p5-Business-ISSN-[0-9]*:../../misc/p5-Business-ISSN
DEPENDS+=		p5-Business-ISMN-[0-9]*:../../misc/p5-Business-ISMN
DEPENDS+=		p5-Unicode-LineBreak-[0-9]*:../../textproc/p5-Unicode-LineBreak
DEPENDS+=		p5-autovivification-[0-9]*:../../devel/p5-autovivification

DEPENDS+=		p5-Readonly-XS-[0-9]*:../../devel/p5-Readonly-XS

DEPENDS+=		p5-IPC-Run3-[0-9]*:../../devel/p5-IPC-Run3
DEPENDS+=		p5-Text-BibTeX>=0.71:../../textproc/p5-Text-BibTeX
DEPENDS+=		p5-libwww-[0-9]*:../../www/p5-libwww

BUILD_DEPENDS+=		p5-ExtUtils-LibBuilder>=0.4:../../devel/p5-ExtUtils-LibBuilder
BUILD_DEPENDS+=		p5-Config-AutoConf>=0.1:../../devel/p5-Config-AutoConf

INSTALLATION_DIRS=	bin

post-install:
		${INSTALL_SCRIPT} ${WRKSRC}/bin/biber ${DESTDIR}${PREFIX}/bin

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
