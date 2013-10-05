LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE    := polipo
LOCAL_SRC_FILES := \
       util.c event.c io.c chunk.c atom.c object.c log.c diskcache.c \
       main.c \
       config.c local.c http.c client.c server.c auth.c tunnel.c \
       http_parse.c parse_time.c dns.c forbidden.c \
       md5import.c ftsimport.c fts_compat.c socks.c mingw.c

DEFINES := -DANDROID \
 -DHAS_STDINT_H \
 -DHAVE_IPv6 \
 -DHAVE_ASPRINTF \
 -DHAVE_FFSL \
 -DHAVE_FFSLL \
 -DHAVE_FTS \
 -DHAVE_MEMRCHR \
 -DHAVE_REGEX \
 -DNO_DISK_CACHE

LOCAL_CFLAGS := $(DEFINES) -Wall -fno-strict-aliasing

LOCAL_STATIC_LIBRARIES := libparser

include $(BUILD_EXECUTABLE)
