ARCHS = arm64
TARGET = iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ColorRoadModMenu
ColorRoadModMenu_FILES = tweak.x Menu.mm
ColorRoadModMenu_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/tweak.mk
