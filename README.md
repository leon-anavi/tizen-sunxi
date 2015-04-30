tizen-sunxi
===========

Tizen-sunxi is an open-source project for porting Tizen to devices with Allwinner A-Series processors. Sunxi represents he family of ARM SoC (System on Chip) designed for embedded systems, and made by Allwinner Tech. in Zhuhai (Guangdong, China). The port targets the following SoC:
* Allwinner A10 (sun4i) (Cortex-A8)
* Allwinner A13 (sun5i) (Cortex-A8)
* Allwinner A10s(sun5i)(Cortex-A8)
* Allwinner A31 (sun6i) 4x(Cortex-A7)
* Allwinner A31s (sun6i) 4x(Cortex-A7)
* Allwinner A20 (sun7i) 2x(Cortex-A7)

Tizen-sunxi has been tested with the following devices:
* A20-OLinuXino-MICRO (Olimex)
* A10-OLinuXino-LIME (Olimex)
* A10s-OLinuXino-MICRO (Olimex)

Tizen-sunxi should also work on the following devices:
* A13-OLinuXino (Olimex)
* A13-OLinuXino-MICRO (Olimex)
* A20-OLinuXino-LIME (Olimex)
* Banana Pi
* Auxtek T003 hdmi tv stick
* Auxtek T004 hdmi tv stick
* BA10 TV Box
* Cubieboard development board 1024 MB RAM
* Cubieboard2 (A20) development board
* Cubietruck development board
* Gooseberry development board
* Mele A1000G/A2000G 1024 MB RAM
* Mini-X 1024 MB RAM
* mk802 (with female mini hdmi) 512 MB RAM
* mk802 with A10s (s with a circle around it on the barcode label)
* mk802ii (with male normal hdmi) 1024 MB RAM
* r7 hdmi tv stick
* UHost U1A hdmi tv stick
* Wobo i5 TV Box
* A10 tablet sold under various names (whitelabel)
* A13 tablet sold under various names (whitelabel)
* Coby MID7042 tablet
* Coby MID8042 tablet
* Coby MID9742 tablet
* Cubieboard development board 512 MB RAM
* DNS AirTab M82 tablet
* EOMA68 A10 CPU card
* H6 netbook
* Hackberry development board
* Hyundai a7hd tablet
* iNet-97F Rev.2 (and clones) tablet
* Marsboard A10
* Megafeis A08
* Mele A1000/A2000 512 MB RAM
* Mele A3700
* Mini-X 512 MB RAM
* Mini-X with A10s soc
* mk802 (with female mini hdmi) 1024 MB RAM
* pcDuino development board
* Point of View ProTab 2 IPS 9" tablet
* Point of View ProTab 2 IPS tablet with 3g
* Sanei N90
* XZPAD700 7" tablet

Downloads
===========

##Tizen:Common

###A20-OLinuXino-MICRO
Tizen:Common image with enabled Smart Development Bridge (SDB): http://bit.ly/1D8rLKe

##Tizen 2.0

###A20-OLinuXino-MICRO
Tizen 2.0 8GB image with enabled debug console over UART0: http://bit.ly/1f9QLo0

###A10S-OLinuXino-MICRO

####Tizen 2.0
Tizen 2.0 8GB image for A10S-OLinuXino-MICRO with enabled debug console over UART0: http://bit.ly/18Dw4zi

####Tizen 2.0 Alpha
Tizen 2.0 Alpha 8GB image for A10S-OLinuXino-MICRO: http://bit.ly/1hexQeL

Porting Guide
===========
1. Build Linux and U-boot
2. Create Tizen image
3. Format SD card
4. Mount the images

Configuring the Display
===========
Change the value of disp.screen0_output_type=X at file uEnv.txt to adjust the display. Replace X with one of: 
* **0** none
* **1** lcd
* **2** tv
* **3** hdmi
* **4** vga

Useful Links
===========
* Building Linux for A10S from scratch http://olimex.wordpress.com/2013/06/19/building-linux-for-a10s-from-scratch/
* How to make bootable SD card with Debian Linux for A20-OLinuXino-MICRO based on Kernel 3.4 http://olimex.wordpress.com/2013/09/18/7795/
* Creating a Tizen Platform Image from Scratch through Local Build https://source.tizen.org/documentation/developer-guide/creating-tizen-platform-image-scratch-through-local-build
* Creating a Tizen Image https://source.tizen.org/documentation/articles/creating-tizen-image
* Tizen 2.0 Alpha PandaBoard Images http://download.tizen.org/snapshots/2.0alpha/ivi-panda/latest/images/
* Getting Started Guide For PandaBoard https://wiki.tizen.org/wiki/Tizen_IVI_Getting_Started_Guide_For_PandaBoard#Preparation
* Tizen & ARM https://wiki.tizen.org/wiki/ARM
* How to adapt Tizen:Common ARM images to boot renesas rcar https://dockr.eurogiciel.fr/blogs/embedded/tizen-arm-images-to-renesas/

