TARGET := iphone:clang:latest:14.8
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = QRCodeURLScheme

QRCodeURLScheme_FILES = Tweak.x
QRCodeURLScheme_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
