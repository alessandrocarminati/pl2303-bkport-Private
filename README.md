# PL2303 device id not supported

I recently purchased a "USB multiple serial" cable.
Plugging it in my Linux mint 20.01 kernel 5.13, the cable did not work.

```
usb 1-8.1: new full-speed USB device number 9 using xhci_hcd
usb 1-8.1: New USB device found, idVendor=067b, idProduct=23a3, bcdDevice= 6.05
usb 1-8.1: New USB device strings: Mfr=1, Product=2, SerialNumber=3
usb 1-8.1: Product: USB-Serial Controller 
usb 1-8.1: Manufacturer: Prolific Technology Inc. 
usb 1-8.1: SerialNumber: CJDDb116L16
usb 1-8.2: new full-speed USB device number 10 using xhci_hcd
usb 1-8.2: New USB device found, idVendor=067b, idProduct=23a3, bcdDevice= 6.05
usb 1-8.2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
usb 1-8.2: Product: USB-Serial Controller 
usb 1-8.2: Manufacturer: Prolific Technology Inc. 
usb 1-8.2: SerialNumber: BYBVb116L16
usb 1-8.3: new full-speed USB device number 11 using xhci_hcd
usb 1-8.3: New USB device found, idVendor=067b, idProduct=23a3, bcdDevice= 6.05
usb 1-8.3: New USB device strings: Mfr=1, Product=2, SerialNumber=3
usb 1-8.3: Product: USB-Serial Controller 
usb 1-8.3: Manufacturer: Prolific Technology Inc. 
usb 1-8.3: SerialNumber: BYBKb116L16
usb 1-8.4: new full-speed USB device number 12 using xhci_hcd
usb 1-8.4: New USB device found, idVendor=067b, idProduct=23a3, bcdDevice= 6.05
usb 1-8.4: New USB device strings: Mfr=1, Product=2, SerialNumber=3
usb 1-8.4: Product: USB-Serial Controller 
usb 1-8.4: Manufacturer: Prolific Technology Inc. 
usb 1-8.4: SerialNumber: CJCMb116L16
usbcore: registered new interface driver usbserial_generic
usbserial: USB Serial support registered for generic
usbcore: registered new interface driver pl2303
usbserial: USB Serial support registered for pl2303
pl2303 1-8.1:1.0: pl2303 converter detected
pl2303 1-8.1:1.0: unknown device type, please report to linux-usb@vger.kernel.org
pl2303 1-8.2:1.0: pl2303 converter detected
pl2303 1-8.2:1.0: unknown device type, please report to linux-usb@vger.kernel.org
pl2303 1-8.3:1.0: pl2303 converter detected
pl2303 1-8.3:1.0: unknown device type, please report to linux-usb@vger.kernel.org
pl2303 1-8.4:1.0: pl2303 converter detected
pl2303 1-8.4:1.0: unknown device type, please report to linux-usb@vger.kernel.org
```

The deviceid **067b:23a3** is not supported by this kernel version.
This repository is the backport for the new driver.

# build

```
make -C /lib/modules/$(uname -r)/build M=$PWD modules 
```

