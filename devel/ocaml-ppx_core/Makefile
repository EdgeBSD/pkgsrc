# $NetBSD: Makefile,v 1.2 2016/05/05 11:45:38 jaapb Exp $

VERSION=	113.24.00
GITHUB_PROJECT=	ppx_core
DISTNAME=	${GITHUB_PROJECT}-${VERSION}
PKGNAME=	${GITHUB_PROJECT}-${DISTNAME}
PKGREVISION=	1
PKGNAME=	ocaml-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=janestreet/}

MAINTAINER=	jaapb@NetBSD.org
HOMEPAGE=	${MASTER_SITE_GITHUB:=janestreet/ppx_core/}
COMMENT=	Standard library for OCaml ppx rewriters
LICENSE=	apache-2.0

HAS_CONFIGURE=	yes
USE_LANGUAGES=	# none

OCAML_USE_OASIS_DYNRUN=	yes

.include "../../mk/ocaml.mk"
.include "../../devel/ocaml-ppx_tools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
