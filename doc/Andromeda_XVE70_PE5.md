# Andromeda XVE70 Module
## Reference Design for Andromeda PE5 Base Board

## 1. Overview

### 1.1 Introduction

The Andromeda XVE70 module reference design demonstrates a system using the Andromeda XVE70 module in combination with the Andromeda PE5 base board. It presents the basic hardware configuration of the device (AMD Versal AI Edge Gen 2) and contains a getting started tutorial.

The Vivado project of this reference design is used to generate the hardware platform (XSA). The XSA is then used to build a Linux image with the AMD Embedded Development Framework (EDF). The reference design does not include any bare-metal (Vitis) software application. Only the SD card boot mode is described in this document.

A known issues section ([Section 3](#3-known-issues)) is included to help users resolve potential problems related to project generation, board connectivity and system functionality. Contact the Enclustra Support Channel [1] if a problem persists.

More information on the module and the base board can be found in the Andromeda XVE70 Module User Manual [2] and the Andromeda PE5 Base Board User Manual [3]. An introduction to the AMD Vivado tools is available in the Vivado Design Suite User Guide [7].

The following directory structure applies to the reference design:

| Directory | Description                                                  |
| --------- | ------------------------------------------------------------ |
| `doc`     | Reference design documentation                               |
| `scripts` | Scripts required for project creation and settings           |
| `src`     | Design pinout, timing constraints and VHDL source code       |

### 1.2 Prerequisites

* IT infrastructure
  * Computer with a microSD card slot (or an SD card reader)
  * Supported OS (a list is given in the Vivado Design Suite Installation Guide [8]). The Linux image build was tested on Ubuntu 22.04.
* Software
  * AMD Vivado Design Suite 2026.1 (used to create the project, generate the device image and export the XSA)
  * AMD Vitis / Vivado 2026.1 tools providing `sdtgen` (needed by the Linux image build to generate the System Device Tree from the XSA)
  * AMD Embedded Development Framework (EDF) release 2026.1 and the Enclustra AMD Yocto meta layer [5] (used to build the Linux image, see [Section 2.4](#24-next-steps-building-the-linux-image))
  * Enclustra Module Configuration Tool (MCT) [4] (optional, only needed to change the FTDI mode)
  * A terminal emulation program, for example `minicom` or `picocom`
* Hardware
  * Enclustra Andromeda XVE70 module
  * Enclustra Andromeda PE5 base board
* Accessories
  * 12 V DC power supply
  * microSD card
  * USB-C cable

## 2. Getting Started

This section describes how to configure the Andromeda XVE70 module and the Andromeda PE5 base board, generate the Vivado project and the XSA, and boot the resulting image from an SD card:

1. Install the module and configure the base board.
2. Generate the Vivado project and export the hardware platform (XSA).
3. Build the Linux image with EDF.
4. Boot from the SD card and open the serial console.

Read the Andromeda XVE70 Module User Manual [2] and the Andromeda PE5 Base Board User Manual [3] carefully before proceeding.

### 2.1 Essential Information

> **TIP:** Workarounds and fixes for potential issues can be found in [Section 3](#3-known-issues).

> **NOTICE – Damage to the device due to overheating**
> Depending on the user application, the Andromeda XVE70 module may consume more power than can be dissipated without additional cooling measures. Ensure that the device is always adequately cooled by installing a heat sink and fan.

### 2.2 Setting up the Hardware

> **NOTICE – Damage to the device when mounting or removing the module**
> Mounting or removing the module while the base board is powered can lead to damage to the module or the base board. Ensure that the base board is not powered before mounting or removing the module.

The relevant interfaces of the Andromeda PE5 base board are labeled as in the base board user manual [3].

1. Ensure that no power is connected to the power connector of the base board (label `12 V DC`).
2. Set the DIP switches on the base board as follows (the `BOOT` setting selects the SD card boot mode):

   | Switch bank | 1   | 2   | 3   | 4   |
   | ----------- | --- | --- | --- | --- |
   | `CFG`       | OFF | OFF | OFF | OFF |
   | `BOOT`      | ON  | ON  | OFF | OFF |
   | `USER`      | OFF | OFF | OFF | OFF |
   | `VSEL1`     | ON  | ON  | OFF | OFF |
   | `VSEL0`     | ON  | ON  | OFF | OFF |

3. Install the Andromeda XVE70 module on the base board.

   > **TIP:** The copper pad around one screw hole of the module is shaped like a teardrop. The same can be found on the base board. These orientation marks identify the proper orientation of the module when connecting it to the base board.

4. Connect the USB-C cable between the computer and the base board using the USB-C port labeled `USBD`.

The hardware is now ready. The SD card is inserted and the board is powered in [Section 2.5](#25-booting-from-the-sd-card), once the Linux image has been built.

### 2.3 Generating the Project and the XSA

Follow the steps in this section to generate the reference design project. The module, base board and project settings are already configured in the `scripts` directory, no modification is required.

1. Start AMD Vivado 2026.1.
2. Create the Andromeda XVE70 module reference design project:
   1. In the Tcl Console at the bottom of the Vivado window type:
      ```tcl
      cd <path-to-reference-design>
      source scripts/settings.tcl
      source scripts/create_project.tcl
      ```

   2. Wait for completion (the created project opens automatically).

   The script creates the project in `Vivado/AM-XVE70-2VE3858-2MSI-D4/`, adds the sources and constraints from `src/` and re-creates the block design.

3. Compile the design and generate the device image:
   1. Click **Generate Device Image**.
   2. Click **Yes** in the next window.
   3. Click **Launch runs on local host** with the default number of jobs. This runs all design steps from synthesis to device image generation.
   4. Wait for completion.
   5. Select **View Reports** and click **OK**.
4. Export the hardware platform:
   1. Select **File > Export > Export Hardware...**.
   2. Click **Next**.
   3. Select **Include device image** and click **Next**.
   4. Leave the default settings and click **Next**.
   5. Click **Finish**.

The build output is located in `Vivado/AM-XVE70-2VE3858-2MSI-D4/` and is described in the following table:

| File                                      | Description                                  |
| ----------------------------------------- | -------------------------------------------- |
| `Andromeda_XVE70_PE5.xsa`                 | Hardware handoff file used to build the image |

> **NOTE:** The XSA must be exported with the device image included.

### 2.4 Building the Linux Image

The exported XSA is the input of the Linux image build. Build the image with EDF release 2026.1 and the Enclustra AMD Yocto meta layer [5], using the XSA generated in [Section 2.3](#23-generating-the-project-and-the-xsa). The complete procedure, including the generation of the `.wic` image, is described in the documentation of the meta layer.

### 2.5 Booting from the SD Card

1. Write the `.wic` image to the SD card as described in the deployment section of the Enclustra AMD Yocto meta layer documentation [5].
2. Ensure that no power is connected to the base board and that the `BOOT` DIP switch is set as described in [Section 2.2](#22-setting-up-the-hardware).
3. Insert the SD card into the SD card slot of the base board (label `SD Card`).
4. **NOTICE – Damage to the device when applying power.** Ensure that the mounting holes on the base board are aligned with the mounting holes of the module before applying power. Connect the 12 V DC power supply to the power connector of the base board (label `12 V DC`). The `PWGD` LED lights up.
5. Several serial ports are detected by the host OS (e.g. `/dev/ttyUSB0` to `/dev/ttyUSB3`). The PS UART is accessed through the FTDI of the base board: open the serial port with the second highest number of the newly detected ports (e.g. `/dev/ttyUSB2`) with the following settings. Any suitable serial terminal can be used.

   | Parameter    | Value   |
   | ------------ | ------- |
   | Baud rate    | 115200  |
   | Data width   | 8 bit   |
   | Parity       | None    |
   | Stop bits    | 1       |
   | Flow control | None    |

   > **NOTE:** If no serial port appears, or the FTDI is not in UART mode, set the FTDI device mode with the Enclustra MCT [4] (`Settings > Enable configuring any FTDI`, `Enumerate`, `FTDI Configuration`, select the required device mode, `Set device mode`, then reconnect the USB-C cable).

6. Press the power-on reset button (label `POR`) and release it after 1 s.
7. The boot messages (PLM, U-Boot, Linux) are printed in the serial terminal. Log in as `root` (no password).

## 3. Known Issues

### 3.1 UFS Is Not Supported as Boot Device

Due to a hardware limitation of the module, UFS cannot be used as boot device: the device is not detected by the Boot ROM. This will be fixed in module revision 0.2. UFS can still be used as normal storage once the system is booted.

### 3.2 System Reboot Does Not Work with Vivado 2026.1

A patch is required for Vivado 2026.1 so that the PLM can properly reset the X5PLL resources when a system reset (SRST) is issued (AMD Answer Record 000040632). If the patch is not installed, an SRST results in the DDR memories not being calibrated. To install it:

1. Log in to AMD Adaptive Support and open the answer record: <https://adaptivesupport.amd.com/s/article/000040632?language=en_US>.
2. Download the patch.
3. Install it in the Vivado installation directory, following the instructions of the answer record.

### 3.3 Memory Controller Issue with Vivado 2025.2

With Vivado 2025.2, the boot data generated for the memory controllers can lead to boot failures when the LPDDR5X memory is run at full speed (8533 Mbps) under heavy concurrent memory traffic. AMD confirmed that the same design and hardware boot reliably with the boot data generated by Vivado 2026.1, the differences originating from the tool and not from the design.

Use Vivado 2026.1 and the compatible EDF release (2026.1) to run the DDR at full speed.

## References

1. Enclustra Support Channel: support@enclustra.com
2. Andromeda XVE70 Module User Manual: <https://www.enclustra.com/en/products/system-on-chip-modules/amd-versal-xve-70-ai/>
3. Andromeda PE5 Base Board User Manual: <https://www.enclustra.com/am-pe5-user-manual>
4. Enclustra Module Configuration Tool (MCT): <https://www.enclustra.com/module-configuration-tool>
5. Enclustra AMD Yocto meta layer (Enclustra Linux Documentation): <https://github.com/enclustra/meta-enclustra-amd>
6. Andromeda PE5 Base Board Known Issues and Changes: <https://www.enclustra.com/am-pe5-known-issues-and-changes>
7. Vivado Design Suite User Guide (UG910): <https://docs.amd.com/r/en-US/ug910-vivado-getting-started>
8. Vivado Design Suite User Guide - Release Notes, Installation, and Licensing (UG973): <https://docs.amd.com/r/en-US/ug973-vivado-release-notes-install-license/Release-Notes>