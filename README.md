# Lenovo ThinkPad E570 (Kaby Lake) Hackintosh

[![](https://img.shields.io/badge/EFI-Release-informational?style=flat&logo=apple&logoColor=white&color=9debeb)](https://github.com/Lorys89/Lenovo_ThinkPad_E570/releases)


EFI for enovo ThinkPad E570 with OpenCore bootloader

![descrizione](./Screenshot/pc.png)

### Computer Spec:

| Component        | Brank                              |
| ---------------- | ---------------------------------- |
| CPU              | Intel i5 7200U (2C-4T 3MB KBL)     |
| iGPU             | Intel® HD 620 Graphics             |
| Lan              | Realtek 8168                       |
| Audio            | Conexant CX20753                   |
| Ram              | Crucial 16 GB DDR4 2133 Mhz        |
| Wifi + Bluetooth | BCM94350ZAE (DW1820A)              |
| NVMe             | Intel PEKKF256G7L 256 GB (MACOS)   |
| 1° SSD SATA      | Silicon Power A55 256 GB (WIN 11)  |
| 2° SSD SATA      | Silicon Power A55 256 GB (LINUX)   |
| SmBios           | MacBookPro 14,1                    |
| BootLoader       | OpenCore 0.8.3                     |
| macOS            | Ventura 13 beta 6                  |


![infomac](./Screenshot/infomac.png)

### What works and What doesn't or WIP:

- [x] Intel HD 620 iGPU eDP with Backlight Output
- [x] Intel HD 620 iGPU HDMI Output 
- [x] Intel HD 620 iGPU Type-C to HDMI Output
- [x] Intel HD 620 iGPU - H264 & HEVC
- [x] CX20753 Internal Speakers
- [x] CX20753 Internal microphone
- [x] CX20753 Combojack headphones
- [x] CX20753 Combojack microphone
- [x] CX20753 HDMI Audio Output
- [x] CX20753 TYPE-C to HDMI Audio Output
- [x] All USB-A 3.1 Ports (TYPE-C 3.1 Included)
- [x] SpeedStep / Sleep / Wake
- [x] HID Key PWRB & SLPB 
- [x] SYNA Touchpad with gesture + TrackPoint
- [x] Keyboard (PS2-Internal) with backlight
- [x] F5 & F6 Brightness Key
- [x] F7 to F12 Wifi, Bt, Setting and other
- [x] F1 & F2 & F3 Sound Key & F4 Mic
- [x] Wi-Fi and Bluetooth BCM94350ZAE (DELL DW1820A) Module
- [x] Lan Realtek 8168
- [x] SSD NVME Slot-1 PciE
- [x] Sata Slot AHCI
- [x] SD Cardreader
- [x] WebCam (USB-Internal)
- [x] All Sensors CPU, IGPU, BATTERY, NVME, SATA, FAN
- [x] ACPI Battery
- [x] NVRAM (Native)
- [x] Recovery (macOS) boot from OpenCore
- [x] Windows 11 boot from OpenCore
- [x] Linux boot from OpenCore

## Peripherals & TouchPad Setting & Benchmarks

![infohack](./Screenshot/periferiche.png)
![infodp2](./Screenshot/pci-list.png)
![Temp-Fan-Control](./Screenshot/Temp-Fan-Control.png)
![speedtest](./Screenshot/speedtest.png)
![touchpad](./Screenshot/touchpad.png)
![trascinamento](./Screenshot/trascinamento.png)
![videoproc](./Screenshot/videoproc.png)


### Special Config:

- Usb port mapping performed
- SSDT-Hack Essential patch

### Post Install:

Install [YogaSMC app release](https://github.com/zhen-zen/YogaSMC/releases)

See [ioreg](./MacBook%20Pro%2014%2C1.zip) for more clarification


### MacOS bootable USB creation:
- Read the Dortania guide for creating your USB from Windows or macOS
- [Guide Dortania](https://dortania.github.io/OpenCore-Install-Guide/installer-guide/) - USB creation


## Bios settings
### Enable :
* Integrated NIC : Enable


### Disable : 
* Secure Boot
* Absolute
* Intel SGX
* Enable UEFI Network Stack


### Working all NATIVE-SHORTCUTS-APPLE:

![APPLE-NATIVE-SHORTCUTS](./Screenshot/APPLE-NATIVE-SHORTCUTS.png)

## Credits

- [Apple](https://apple.com) for macOS.
- [Acidanthera](https://github.com/acidanthera) for OpenCore and all the lovely hackintosh work.
