# IOLI-CrackMes

The Ioli Crackmes are a series of reverse engineering exercises designed by Pau Oliva Fora for users of Radare2.

## Use QEMU

```bash
yay -S qemu-user aarch64-linux-gnu-gcc
qemu-aarch64 -L /usr/aarch64-linux-gnu -E ENV1=1ambd4 crackme0x00
```
