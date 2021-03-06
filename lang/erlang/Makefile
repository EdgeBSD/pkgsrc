# $NetBSD: Makefile,v 1.75 2016/04/21 11:24:23 fhajny Exp $

DISTNAME=		otp_src_${DIST_VERSION_MAJOR}.${DIST_VERSION_MINOR}
PKGNAME=		${DISTNAME:S/otp_src_/erlang-/}
CATEGORIES=		lang
MASTER_SITES=		http://www.erlang.org/download/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.erlang.org/
COMMENT=		Concurrent functional programming language
LICENSE=		apache-2.0

DIST_SUBDIR=		erlang

GNU_CONFIGURE=		yes
USE_GNU_CONFIGURE_HOST=	${USE_CROSS_COMPILE}
OVERRIDE_DIRDEPTH=	4
USE_TOOLS+=		gmake perl:run flex

CONFIGURE_ARGS+=	--with-ssl=${BUILDLINK_PREFIX.openssl}

PTHREAD_OPTS+=		require native
CONFIGURE_ARGS+=	--enable-threads

.include "../../mk/bsd.prefs.mk"

# have gcc without the necessary atomic ops?
.if !empty(MACHINE_PLATFORM:MNetBSD-[56].*)

# a machine without native ethread implementation?
.if	empty(MACHINE_PLATFORM:M*i386)	&&\
	empty(MACHINE_PLATFORM:M*sparc)	&&\
	empty(MACHINE_PLATFORM:M*sparc64) &&\
	empty(MACHINE_PLATFORM:M*powerpc) &&\
	empty(MACHINE_PLATFORM:M*x86_64)

CONFIGURE_ARGS+=	--disable-native-ethr-impls\
			--disable-smp-require-native-atomics

.endif
.endif

MAKE_ENV+=		DESTDIR=${DESTDIR}

REPLACE_INTERPRETER+=	escript
REPLACE.escript.old=	.*escript
REPLACE.escript.new=	${PREFIX}/bin/escript
REPLACE_FILES.escript=	\
	lib/diameter/bin/diameterc \
	lib/erl_docgen/priv/bin/codeline_preprocessing.escript \
	lib/erl_docgen/priv/bin/xml_from_edoc.escript \
	lib/reltool/examples/display_args \
	lib/reltool/examples/mnesia_core_dump_viewer \
	lib/snmp/bin/snmpc \
	lib/snmp/src/compile/snmpc.src

SUBST_CLASSES+=		target
SUBST_STAGE.target=	post-patch
SUBST_FILES.target=	make/target.mk
SUBST_SED.target=	-e "s|=.*config.guess)|= ${MACHINE_GNU_PLATFORM}|"
SUBST_MESSAGE.target=	Fixing target name.

TEST_TARGET=		tests
TEST_MAKE_FLAGS=	ERL_TOP=${WRKSRC}
REPLACE_PERL+=		make/make_emakefile

SMF_NAME=		epmd

CONFIGURE_ARGS.DragonFly+=	--disable-sctp

###
### XXX There may be others here.
###
.if ${OPSYS} == "NetBSD" || ${OPSYS} == "OpenBSD" || ${OPSYS} == "Darwin"
CONFIGURE_ARGS+=	--enable-kernel-poll
.endif

.include "options.mk"

.include "Makefile.versions"

###
### Ensure this gets rebuilt.
###
pre-build:
	${RUN} ${RM} -f ${WRKSRC}/lib/stdlib/ebin/dets_v9.beam

post-install:
	chmod -R go-w ${DESTDIR}${PREFIX}/lib/erlang/lib

.include "../../security/openssl/buildlink3.mk"
.include "../../mk/termcap.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
