# $NetBSD: options.mk,v 1.8 2016/04/01 08:21:05 fhajny Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.node
PKG_SUPPORTED_OPTIONS=	openssl dtrace icu
PKG_SUGGESTED_OPTIONS=	openssl

.if (${OPSYS} == "SunOS" || ${OPSYS} == "Darwin") \
    && exists(/usr/sbin/dtrace)
PKG_SUGGESTED_OPTIONS+=	dtrace
.endif

.include "../../mk/bsd.options.mk"

PLIST_VARS+=		dtrace

.if !empty(PKG_OPTIONS:Mdtrace)
CONFIGURE_ARGS+=	--with-dtrace
PLIST.dtrace=		yes
.else
CONFIGURE_ARGS+=	--without-dtrace
.endif

# print-PLIST helper
PRINT_PLIST_AWK+=	{if ($$0 ~ /lib\/dtrace/) {$$0 = "$${PLIST.dtrace}" $$0;}}

.if !empty(PKG_OPTIONS:Micu)
CONFIGURE_ARGS+=	--with-intl=system-icu
.include "../../textproc/icu/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mopenssl)
BUILDLINK_API_DEPENDS.openssl+=	openssl>=1.0.2
.include "../../security/openssl/buildlink3.mk"
CONFIGURE_ARGS+=	--shared-openssl
.else
CONFIGURE_ARGS+=	--without-ssl
.endif
