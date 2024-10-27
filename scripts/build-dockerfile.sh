#!/bin/sh
# Generate Dockerfile
source versions.env

cat Dockerfile.head > Dockerfile

cat << EOF >> Dockerfile

ARG AWS_LC_TAG=${AWS_LC_TAG} \\
	LIBRESSL_TAG=${LIBRESSL_TAG} \\
	OPENSSL_TAG=${OPENSSL_TAG} \\
	MODULE_NGINX_COOKIE_FLAG=${MODULE_NGINX_COOKIE_FLAG} \\
	MODULE_NGINX_DEVEL_KIT=${MODULE_NGINX_DEVEL_KIT} \\
	MODULE_NGINX_ECHO=${MODULE_NGINX_ECHO} \\
	MODULE_NGINX_HEADERS_MORE=${MODULE_NGINX_HEADERS_MORE} \\
	MODULE_NGINX_MISC=${MODULE_NGINX_MISC} \\
	MODULE_NGINX_NJS=${MODULE_NGINX_NJS} \\
	MODULE_NGINX_VTS=${MODULE_NGINX_VTS} \\
	NGINX=${NGINX}

EOF

cat Dockerfile.body >> Dockerfile
