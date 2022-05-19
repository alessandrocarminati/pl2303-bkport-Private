# SPDX-License-Identifier: GPL-2.0
#
# Makefile for the USB serial device drivers.
#

# Object file lists.

obj-$(CONFIG_USB_SERIAL)			+= usbserial.o

usbserial-y := usb-serial.o generic.o bus.o

usbserial-$(CONFIG_USB_SERIAL_CONSOLE)	+= console.o

obj-$(CONFIG_USB_SERIAL_PL2303)			+= pl2303.o
