# $NetBSD: options.mk,v 1.1 2016/05/21 19:01:59 youri Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.mate-panel
PKG_SUPPORTED_OPTIONS=	introspection
PKG_SUGGESTED_OPTIONS=	introspection

.include "../../mk/bsd.options.mk"

PLIST_VARS+=	introspection

.if !empty(PKG_OPTIONS:Mintrospection)
BUILDLINK_DEPMETHOD.gobject-introspection+=	build
.include "../../devel/gobject-introspection/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-introspection
PLIST.introspection=	yes
.else
CONFIGURE_ARGS+=	--disable-introspection
.endif
