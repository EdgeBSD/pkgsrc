# $NetBSD: Makefile,v 1.6 2016/05/06 22:31:36 wiz Exp $

DISTNAME=	cudf-0.7
PKGNAME=	ocaml-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	misc
MASTER_SITES=	https://gforge.inria.fr/frs/download.php/file/33593/

MAINTAINER=	jaapb@NetBSD.org
HOMEPAGE=	http://www.mancoosi.org/cudf/
COMMENT=	OCaml library for the Common Upgradeability Description Format
LICENSE=	gnu-lgpl-v3

USE_TOOLS+=	gmake pkg-config pod2man
OCAML_USE_FINDLIB=	yes
MAKE_JOBS_SAFE=	no

PKGCONFIG_OVERRIDE+=	c-lib/cudf.pc.in

.include "../../mk/ocaml.mk"

BUILD_TARGET=	all
.if ${OCAML_USE_OPT_COMPILER} == "yes"
BUILD_TARGET+=	opt
.endif

.include "../../devel/ocaml-extlib/buildlink3.mk"
.include "../../devel/ocamlbuild/buildlink3.mk"
.include "../../lang/camlp4/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
