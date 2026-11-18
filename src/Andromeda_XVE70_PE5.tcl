# ----------------------------------------------------------------------------------------------------
# Copyright (c) 2025 by Enclustra GmbH, Switzerland.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this hardware, software, firmware, and associated documentation files (the
# "Product"), to deal in the Product without restriction, including without
# limitation the rights to use, copy, modify, merge, publish, distribute,
# sublicense, and/or sell copies of the Product, and to permit persons to whom the
# Product is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Product.
#
# THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
# PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
# ----------------------------------------------------------------------------------------------------


# DIP Switches
# Dedicated PS pin, no PL constraint generated: P5 USB_AUXP_504 [get_ports {DIP1_N_DP_AUX_P}]
# Dedicated PS pin, no PL constraint generated: P4 USB_AUXN_504 [get_ports {DIP2_N_DP_AUX_N}]

# User Led
set_property -dict {PACKAGE_PIN T44   IOSTANDARD LVCMOS18   } [get_ports {LED2_N_DIP0_N}]
set_property -dict {PACKAGE_PIN T45   IOSTANDARD LVCMOS18   } [get_ports {LED3_N_PWR_SYNC}]

# Clock Generator 1 C2M RefClk
set_property -dict {PACKAGE_PIN R46   IOSTANDARD DIFF_HSTL_I_18 } [get_ports {CLK_CG1_C2M_N}]
set_property -dict {PACKAGE_PIN R45   IOSTANDARD DIFF_HSTL_I_18 } [get_ports {CLK_CG1_C2M_P}]

# Clock Generator 1 M2C input clock 1
set_property -dict {PACKAGE_PIN U41   IOSTANDARD DIFF_HSTL_I_18 } [get_ports {CLK_CG1_M2C_N}]
set_property -dict {PACKAGE_PIN U40   IOSTANDARD DIFF_HSTL_I_18 } [get_ports {CLK_CG1_M2C_P}]

# Clock Generator C2M RefClk
set_property -dict {PACKAGE_PIN T43   IOSTANDARD DIFF_HSTL_I_18 } [get_ports {CLK_CG2_C2M_N}]
set_property -dict {PACKAGE_PIN T42   IOSTANDARD DIFF_HSTL_I_18 } [get_ports {CLK_CG2_C2M_P}]

# Clock Generator 2 M2C input clock 1
set_property -dict {PACKAGE_PIN T40   IOSTANDARD DIFF_HSTL_I_18 } [get_ports {CLK_CG2_M2C_N}]
set_property -dict {PACKAGE_PIN U39   IOSTANDARD DIFF_HSTL_I_18 } [get_ports {CLK_CG2_M2C_P}]

# FMC Connector 0
set_property -dict {PACKAGE_PIN BC24  IOSTANDARD LVCMOS12   } [get_ports {F0_HA02_E3B0_N}]
set_property -dict {PACKAGE_PIN BC23  IOSTANDARD LVCMOS12   } [get_ports {F0_HA02_E3B0_P}]
set_property -dict {PACKAGE_PIN BD20  IOSTANDARD LVCMOS12   } [get_ports {F0_HA03_E3B1_N}]
set_property -dict {PACKAGE_PIN BD19  IOSTANDARD LVCMOS12   } [get_ports {F0_HA03_E3B1_P}]
set_property -dict {PACKAGE_PIN BF19  IOSTANDARD LVCMOS12   } [get_ports {F0_HA04_E3B2_N}]
set_property -dict {PACKAGE_PIN BE19  IOSTANDARD LVCMOS12   } [get_ports {F0_HA04_E3B2_P}]
set_property -dict {PACKAGE_PIN BA20  IOSTANDARD LVCMOS12   } [get_ports {F0_HA05_E3B3_N}]
set_property -dict {PACKAGE_PIN AY20  IOSTANDARD LVCMOS12   } [get_ports {F0_HA05_E3B3_P}]
set_property -dict {PACKAGE_PIN BB22  IOSTANDARD LVCMOS12   } [get_ports {F0_HA06_E3AS_N}]
set_property -dict {PACKAGE_PIN BB21  IOSTANDARD LVCMOS12   } [get_ports {F0_HA06_E3AS_P}]
set_property -dict {PACKAGE_PIN BB25  IOSTANDARD LVCMOS12   } [get_ports {F0_HA07_E3A0_N}]
set_property -dict {PACKAGE_PIN BB24  IOSTANDARD LVCMOS12   } [get_ports {F0_HA07_E3A0_P}]
set_property -dict {PACKAGE_PIN AY24  IOSTANDARD LVCMOS12   } [get_ports {F0_HA08_E3A1_N}]
set_property -dict {PACKAGE_PIN AY23  IOSTANDARD LVCMOS12   } [get_ports {F0_HA08_E3A1_P}]
set_property -dict {PACKAGE_PIN BC21  IOSTANDARD LVCMOS12   } [get_ports {F0_HA09_E3A2_N}]
set_property -dict {PACKAGE_PIN BC20  IOSTANDARD LVCMOS12   } [get_ports {F0_HA09_E3A2_P}]
set_property -dict {PACKAGE_PIN AY21  IOSTANDARD LVCMOS12   } [get_ports {F0_HA10_E3A3_N}]
set_property -dict {PACKAGE_PIN AW21  IOSTANDARD LVCMOS12   } [get_ports {F0_HA10_E3A3_P}]
set_property -dict {PACKAGE_PIN AU21  IOSTANDARD LVCMOS12   } [get_ports {F0_HA11_E3AC_N}]
set_property -dict {PACKAGE_PIN AT22  IOSTANDARD LVCMOS12   } [get_ports {F0_HA11_E3AC_P}]
set_property -dict {PACKAGE_PIN AY30  IOSTANDARD LVCMOS12   } [get_ports {F0_HA12_E4AS_N}]
set_property -dict {PACKAGE_PIN AW30  IOSTANDARD LVCMOS12   } [get_ports {F0_HA12_E4AS_P}]
set_property -dict {PACKAGE_PIN BB27  IOSTANDARD LVCMOS12   } [get_ports {F0_HA13_E4A0_N}]
set_property -dict {PACKAGE_PIN BA26  IOSTANDARD LVCMOS12   } [get_ports {F0_HA13_E4A0_P}]
set_property -dict {PACKAGE_PIN BA28  IOSTANDARD LVCMOS12   } [get_ports {F0_HA14_E4A1_N}]
set_property -dict {PACKAGE_PIN AY29  IOSTANDARD LVCMOS12   } [get_ports {F0_HA14_E4A1_P}]
set_property -dict {PACKAGE_PIN AY27  IOSTANDARD LVCMOS12   } [get_ports {F0_HA15_E4A2_N}]
set_property -dict {PACKAGE_PIN AW27  IOSTANDARD LVCMOS12   } [get_ports {F0_HA15_E4A2_P}]
set_property -dict {PACKAGE_PIN BA25  IOSTANDARD LVCMOS12   } [get_ports {F0_HA16_E4A3_N}]
set_property -dict {PACKAGE_PIN AY26  IOSTANDARD LVCMOS12   } [get_ports {F0_HA16_E4A3_P}]
set_property -dict {PACKAGE_PIN BF21  IOSTANDARD LVCMOS12   } [get_ports {F0_HA18_E4B0_N}]
set_property -dict {PACKAGE_PIN BF20  IOSTANDARD LVCMOS12   } [get_ports {F0_HA18_E4B0_P}]
set_property -dict {PACKAGE_PIN BE24  IOSTANDARD LVCMOS12   } [get_ports {F0_HA19_E4B1_N}]
set_property -dict {PACKAGE_PIN BD25  IOSTANDARD LVCMOS12   } [get_ports {F0_HA19_E4B1_P}]
set_property -dict {PACKAGE_PIN BF23  IOSTANDARD LVCMOS12   } [get_ports {F0_HA20_E4B2_N}]
set_property -dict {PACKAGE_PIN BF22  IOSTANDARD LVCMOS12   } [get_ports {F0_HA20_E4B2_P}]
set_property -dict {PACKAGE_PIN AU27  IOSTANDARD LVCMOS12   } [get_ports {F0_HA21_E4B3_N}]
set_property -dict {PACKAGE_PIN AT28  IOSTANDARD LVCMOS12   } [get_ports {F0_HA21_E4B3_P}]
set_property -dict {PACKAGE_PIN AT25  IOSTANDARD LVCMOS12   } [get_ports {F0_HA22_E4BC_N}]
set_property -dict {PACKAGE_PIN AT24  IOSTANDARD LVCMOS12   } [get_ports {F0_HA22_E4BC_P}]
set_property -dict {PACKAGE_PIN AV25  IOSTANDARD LVCMOS12   } [get_ports {F0_HA23_E4AC_N}]
set_property -dict {PACKAGE_PIN AU24  IOSTANDARD LVCMOS12   } [get_ports {F0_HA23_E4AC_P}]
set_property -dict {PACKAGE_PIN BC33  IOSTANDARD LVCMOS12   } [get_ports {F0_LA02_E0B0_N}]
set_property -dict {PACKAGE_PIN BB33  IOSTANDARD LVCMOS12   } [get_ports {F0_LA02_E0B0_P}]
set_property -dict {PACKAGE_PIN BE31  IOSTANDARD LVCMOS12   } [get_ports {F0_LA03_E0B1_N}]
set_property -dict {PACKAGE_PIN BD31  IOSTANDARD LVCMOS12   } [get_ports {F0_LA03_E0B1_P}]
set_property -dict {PACKAGE_PIN BF35  IOSTANDARD LVCMOS12   } [get_ports {F0_LA04_E0B2_N}]
set_property -dict {PACKAGE_PIN BF34  IOSTANDARD LVCMOS12   } [get_ports {F0_LA04_E0B2_P}]
set_property -dict {PACKAGE_PIN AV34  IOSTANDARD LVCMOS12   } [get_ports {F0_LA05_E0B3_N}]
set_property -dict {PACKAGE_PIN AU33  IOSTANDARD LVCMOS12   } [get_ports {F0_LA05_E0B3_P}]
set_property -dict {PACKAGE_PIN BD32  IOSTANDARD LVCMOS12   } [get_ports {F0_LA06_E0AS_N}]
set_property -dict {PACKAGE_PIN BC32  IOSTANDARD LVCMOS12   } [get_ports {F0_LA06_E0AS_P}]
set_property -dict {PACKAGE_PIN AY33  IOSTANDARD LVCMOS12   } [get_ports {F0_LA07_E0A0_N}]
set_property -dict {PACKAGE_PIN AY32  IOSTANDARD LVCMOS12   } [get_ports {F0_LA07_E0A0_P}]
set_property -dict {PACKAGE_PIN BB30  IOSTANDARD LVCMOS12   } [get_ports {F0_LA08_E0A1_N}]
set_property -dict {PACKAGE_PIN BA29  IOSTANDARD LVCMOS12   } [get_ports {F0_LA08_E0A1_P}]
set_property -dict {PACKAGE_PIN BC30  IOSTANDARD LVCMOS12   } [get_ports {F0_LA09_E0A2_N}]
set_property -dict {PACKAGE_PIN BB31  IOSTANDARD LVCMOS12   } [get_ports {F0_LA09_E0A2_P}]
set_property -dict {PACKAGE_PIN AT34  IOSTANDARD LVCMOS12   } [get_ports {F0_LA10_E0A3_N}]
set_property -dict {PACKAGE_PIN AT33  IOSTANDARD LVCMOS12   } [get_ports {F0_LA10_E0A3_P}]
set_property -dict {PACKAGE_PIN AU30  IOSTANDARD LVCMOS12   } [get_ports {F0_LA11_E0AC_N}]
set_property -dict {PACKAGE_PIN AT31  IOSTANDARD LVCMOS12   } [get_ports {F0_LA11_E0AC_P}]
set_property -dict {PACKAGE_PIN BF33  IOSTANDARD LVCMOS12   } [get_ports {F0_LA12_E1B0_N}]
set_property -dict {PACKAGE_PIN BE33  IOSTANDARD LVCMOS12   } [get_ports {F0_LA12_E1B0_P}]
set_property -dict {PACKAGE_PIN BD35  IOSTANDARD LVCMOS12   } [get_ports {F0_LA13_E1B1_N}]
set_property -dict {PACKAGE_PIN BC35  IOSTANDARD LVCMOS12   } [get_ports {F0_LA13_E1B1_P}]
set_property -dict {PACKAGE_PIN BF32  IOSTANDARD LVCMOS12   } [get_ports {F0_LA14_E1B2_N}]
set_property -dict {PACKAGE_PIN BF31  IOSTANDARD LVCMOS12   } [get_ports {F0_LA14_E1B2_P}]
set_property -dict {PACKAGE_PIN BF29  IOSTANDARD LVCMOS12   } [get_ports {F0_LA15_E1B3_N}]
set_property -dict {PACKAGE_PIN BF28  IOSTANDARD LVCMOS12   } [get_ports {F0_LA15_E1B3_P}]
set_property -dict {PACKAGE_PIN BF26  IOSTANDARD LVCMOS12   } [get_ports {F0_LA16_E1AC_N}]
set_property -dict {PACKAGE_PIN BF25  IOSTANDARD LVCMOS12   } [get_ports {F0_LA16_E1AC_P}]
set_property -dict {PACKAGE_PIN BB16  IOSTANDARD LVCMOS12   } [get_ports {F0_LA19_E2B0_N}]
set_property -dict {PACKAGE_PIN BB15  IOSTANDARD LVCMOS12   } [get_ports {F0_LA19_E2B0_P}]
set_property -dict {PACKAGE_PIN BA17  IOSTANDARD LVCMOS12   } [get_ports {F0_LA20_E2B1_N}]
set_property -dict {PACKAGE_PIN AY17  IOSTANDARD LVCMOS12   } [get_ports {F0_LA20_E2B1_P}]
set_property -dict {PACKAGE_PIN AY18  IOSTANDARD LVCMOS12   } [get_ports {F0_LA21_E2B2_N}]
set_property -dict {PACKAGE_PIN AW18  IOSTANDARD LVCMOS12   } [get_ports {F0_LA21_E2B2_P}]
set_property -dict {PACKAGE_PIN BE15  IOSTANDARD LVCMOS12   } [get_ports {F0_LA22_E2B3_N}]
set_property -dict {PACKAGE_PIN BD16  IOSTANDARD LVCMOS12   } [get_ports {F0_LA22_E2B3_P}]
set_property -dict {PACKAGE_PIN BF24  IOSTANDARD LVCMOS12   } [get_ports {F0_LA23_E1AS_N}]
set_property -dict {PACKAGE_PIN BE25  IOSTANDARD LVCMOS12   } [get_ports {F0_LA23_E1AS_P}]
set_property -dict {PACKAGE_PIN BD29  IOSTANDARD LVCMOS12   } [get_ports {F0_LA24_E1A0_N}]
set_property -dict {PACKAGE_PIN BC29  IOSTANDARD LVCMOS12   } [get_ports {F0_LA24_E1A0_P}]
set_property -dict {PACKAGE_PIN BD26  IOSTANDARD LVCMOS12   } [get_ports {F0_LA25_E1A1_N}]
set_property -dict {PACKAGE_PIN BC26  IOSTANDARD LVCMOS12   } [get_ports {F0_LA25_E1A1_P}]
set_property -dict {PACKAGE_PIN BC27  IOSTANDARD LVCMOS12   } [get_ports {F0_LA26_E1A2_N}]
set_property -dict {PACKAGE_PIN BB28  IOSTANDARD LVCMOS12   } [get_ports {F0_LA26_E1A2_P}]
set_property -dict {PACKAGE_PIN BF27  IOSTANDARD LVCMOS12   } [get_ports {F0_LA27_E1A3_N}]
set_property -dict {PACKAGE_PIN BE27  IOSTANDARD LVCMOS12   } [get_ports {F0_LA27_E1A3_P}]
set_property -dict {PACKAGE_PIN BF17  IOSTANDARD LVCMOS12   } [get_ports {F0_LA28_E2AS_N}]
set_property -dict {PACKAGE_PIN BE16  IOSTANDARD LVCMOS12   } [get_ports {F0_LA28_E2AS_P}]
set_property -dict {PACKAGE_PIN BD17  IOSTANDARD LVCMOS12   } [get_ports {F0_LA29_E2A0_N}]
set_property -dict {PACKAGE_PIN BC17  IOSTANDARD LVCMOS12   } [get_ports {F0_LA29_E2A0_P}]
set_property -dict {PACKAGE_PIN BB19  IOSTANDARD LVCMOS12   } [get_ports {F0_LA30_E2A1_N}]
set_property -dict {PACKAGE_PIN BA19  IOSTANDARD LVCMOS12   } [get_ports {F0_LA30_E2A1_P}]
set_property -dict {PACKAGE_PIN BC18  IOSTANDARD LVCMOS12   } [get_ports {F0_LA31_E2A2_N}]
set_property -dict {PACKAGE_PIN BB18  IOSTANDARD LVCMOS12   } [get_ports {F0_LA31_E2A2_P}]
set_property -dict {PACKAGE_PIN BF16  IOSTANDARD LVCMOS12   } [get_ports {F0_LA32_E2A3_N}]
set_property -dict {PACKAGE_PIN BF15  IOSTANDARD LVCMOS12   } [get_ports {F0_LA32_E2A3_P}]
set_property -dict {PACKAGE_PIN BF18  IOSTANDARD LVCMOS12   } [get_ports {F0_LA33_E2AC_N}]
set_property -dict {PACKAGE_PIN BE18  IOSTANDARD LVCMOS12   } [get_ports {F0_LA33_E2AC_P}]
set_property -dict {PACKAGE_PIN BD23  IOSTANDARD LVCMOS12   } [get_ports {F0_HA00_E3BS_CC_N}]
set_property -dict {PACKAGE_PIN BD22  IOSTANDARD LVCMOS12   } [get_ports {F0_HA00_E3BS_CC_P}]
set_property -dict {PACKAGE_PIN BA23  IOSTANDARD LVCMOS12   } [get_ports {F0_HA01_E3BC_CC_N}]
set_property -dict {PACKAGE_PIN BA22  IOSTANDARD LVCMOS12   } [get_ports {F0_HA01_E3BC_CC_P}]
set_property -dict {PACKAGE_PIN BE22  IOSTANDARD LVCMOS12   } [get_ports {F0_HA17_E4BS_CC_N}]
set_property -dict {PACKAGE_PIN BE21  IOSTANDARD LVCMOS12   } [get_ports {F0_HA17_E4BS_CC_P}]
set_property -dict {PACKAGE_PIN BF30  IOSTANDARD LVCMOS12   } [get_ports {F0_LA00_E0BS_CC_N}]
set_property -dict {PACKAGE_PIN BE30  IOSTANDARD LVCMOS12   } [get_ports {F0_LA00_E0BS_CC_P}]
set_property -dict {PACKAGE_PIN BA32  IOSTANDARD LVCMOS12   } [get_ports {F0_LA01_E0BC_CC_N}]
set_property -dict {PACKAGE_PIN BA31  IOSTANDARD LVCMOS12   } [get_ports {F0_LA01_E0BC_CC_P}]
set_property -dict {PACKAGE_PIN BA16  IOSTANDARD LVCMOS12   } [get_ports {F0_LA17_E2BS_CC_N}]
set_property -dict {PACKAGE_PIN AY15  IOSTANDARD LVCMOS12   } [get_ports {F0_LA17_E2BS_CC_P}]
set_property -dict {PACKAGE_PIN BC15  IOSTANDARD LVCMOS12   } [get_ports {F0_LA18_E2BC_CC_N}]
set_property -dict {PACKAGE_PIN BC14  IOSTANDARD LVCMOS12   } [get_ports {F0_LA18_E2BC_CC_P}]
set_property -dict {PACKAGE_PIN BE28  IOSTANDARD LVCMOS12   } [get_ports {F0_CLK0_E1BC_N}]
set_property -dict {PACKAGE_PIN BD28  IOSTANDARD LVCMOS12   } [get_ports {F0_CLK0_E1BC_P}]
set_property -dict {PACKAGE_PIN BE34  IOSTANDARD LVCMOS12   } [get_ports {F0_CLK1_E1BS_N}]
set_property -dict {PACKAGE_PIN BD34  IOSTANDARD LVCMOS12   } [get_ports {F0_CLK1_E1BS_P}]

# FMC Connector 1
set_property -dict {PACKAGE_PIN AU42  IOSTANDARD LVCMOS12   } [get_ports {F1_LA02_E0B0_N}]
set_property -dict {PACKAGE_PIN AU41  IOSTANDARD LVCMOS12   } [get_ports {F1_LA02_E0B0_P}]
set_property -dict {PACKAGE_PIN AT39  IOSTANDARD LVCMOS12   } [get_ports {F1_LA03_E0B1_N}]
set_property -dict {PACKAGE_PIN AR38  IOSTANDARD LVCMOS12   } [get_ports {F1_LA03_E0B1_P}]
set_property -dict {PACKAGE_PIN AU39  IOSTANDARD LVCMOS12   } [get_ports {F1_LA04_E0B2_N}]
set_property -dict {PACKAGE_PIN AU38  IOSTANDARD LVCMOS12   } [get_ports {F1_LA04_E0B2_P}]
set_property -dict {PACKAGE_PIN AR46  IOSTANDARD LVCMOS12   } [get_ports {F1_LA05_E0B3_N}]
set_property -dict {PACKAGE_PIN AT46  IOSTANDARD LVCMOS12   } [get_ports {F1_LA05_E0B3_P}]
set_property -dict {PACKAGE_PIN AV44  IOSTANDARD LVCMOS12   } [get_ports {F1_LA06_E0AS_N}]
set_property -dict {PACKAGE_PIN AV43  IOSTANDARD LVCMOS12   } [get_ports {F1_LA06_E0AS_P}]
set_property -dict {PACKAGE_PIN AR43  IOSTANDARD LVCMOS12   } [get_ports {F1_LA07_E0A0_N}]
set_property -dict {PACKAGE_PIN AT43  IOSTANDARD LVCMOS12   } [get_ports {F1_LA07_E0A0_P}]
set_property -dict {PACKAGE_PIN AR40  IOSTANDARD LVCMOS12   } [get_ports {F1_LA08_E0A1_N}]
set_property -dict {PACKAGE_PIN AT40  IOSTANDARD LVCMOS12   } [get_ports {F1_LA08_E0A1_P}]
set_property -dict {PACKAGE_PIN AV41  IOSTANDARD LVCMOS12   } [get_ports {F1_LA09_E0A2_N}]
set_property -dict {PACKAGE_PIN AV40  IOSTANDARD LVCMOS12   } [get_ports {F1_LA09_E0A2_P}]
set_property -dict {PACKAGE_PIN AT45  IOSTANDARD LVCMOS12   } [get_ports {F1_LA10_E0A3_N}]
set_property -dict {PACKAGE_PIN AR44  IOSTANDARD LVCMOS12   } [get_ports {F1_LA10_E0A3_P}]
set_property -dict {PACKAGE_PIN AU45  IOSTANDARD LVCMOS12   } [get_ports {F1_LA11_E0AC_N}]
set_property -dict {PACKAGE_PIN AU44  IOSTANDARD LVCMOS12   } [get_ports {F1_LA11_E0AC_P}]
set_property -dict {PACKAGE_PIN AV38  IOSTANDARD LVCMOS12   } [get_ports {F1_LA12_E1B0_N}]
set_property -dict {PACKAGE_PIN AV37  IOSTANDARD LVCMOS12   } [get_ports {F1_LA12_E1B0_P}]
set_property -dict {PACKAGE_PIN AT36  IOSTANDARD LVCMOS12   } [get_ports {F1_LA13_E1B1_N}]
set_property -dict {PACKAGE_PIN AU36  IOSTANDARD LVCMOS12   } [get_ports {F1_LA13_E1B1_P}]
set_property -dict {PACKAGE_PIN AW37  IOSTANDARD LVCMOS12   } [get_ports {F1_LA14_E1B2_N}]
set_property -dict {PACKAGE_PIN AW36  IOSTANDARD LVCMOS12   } [get_ports {F1_LA14_E1B2_P}]
set_property -dict {PACKAGE_PIN AN37  IOSTANDARD LVCMOS12   } [get_ports {F1_LA15_E1B3_N}]
set_property -dict {PACKAGE_PIN AN36  IOSTANDARD LVCMOS12   } [get_ports {F1_LA15_E1B3_P}]
set_property -dict {PACKAGE_PIN AP36  IOSTANDARD LVCMOS12   } [get_ports {F1_LA16_E1AC_N}]
set_property -dict {PACKAGE_PIN AR35  IOSTANDARD LVCMOS12   } [get_ports {F1_LA16_E1AC_P}]
set_property -dict {PACKAGE_PIN AL41  IOSTANDARD LVCMOS12   } [get_ports {F1_LA19_E2B0_N}]
set_property -dict {PACKAGE_PIN AM41  IOSTANDARD LVCMOS12   } [get_ports {F1_LA19_E2B0_P}]
set_property -dict {PACKAGE_PIN AN43  IOSTANDARD LVCMOS12   } [get_ports {F1_LA20_E2B1_N}]
set_property -dict {PACKAGE_PIN AN42  IOSTANDARD LVCMOS12   } [get_ports {F1_LA20_E2B1_P}]
set_property -dict {PACKAGE_PIN AP45  IOSTANDARD LVCMOS12   } [get_ports {F1_LA21_E2B2_N}]
set_property -dict {PACKAGE_PIN AP44  IOSTANDARD LVCMOS12   } [get_ports {F1_LA21_E2B2_P}]
set_property -dict {PACKAGE_PIN BF9   IOSTANDARD LVCMOS12   } [get_ports {F1_LA22_E2B3_N}]
set_property -dict {PACKAGE_PIN BF10  IOSTANDARD LVCMOS12   } [get_ports {F1_LA22_E2B3_P}]
set_property -dict {PACKAGE_PIN AM40  IOSTANDARD LVCMOS12   } [get_ports {F1_LA23_E1AS_N}]
set_property -dict {PACKAGE_PIN AL39  IOSTANDARD LVCMOS12   } [get_ports {F1_LA23_E1AS_P}]
set_property -dict {PACKAGE_PIN AL38  IOSTANDARD LVCMOS12   } [get_ports {F1_LA24_E1A0_N}]
set_property -dict {PACKAGE_PIN AM38  IOSTANDARD LVCMOS12   } [get_ports {F1_LA24_E1A0_P}]
set_property -dict {PACKAGE_PIN AN40  IOSTANDARD LVCMOS12   } [get_ports {F1_LA25_E1A1_N}]
set_property -dict {PACKAGE_PIN AN39  IOSTANDARD LVCMOS12   } [get_ports {F1_LA25_E1A1_P}]
set_property -dict {PACKAGE_PIN AP42  IOSTANDARD LVCMOS12   } [get_ports {F1_LA26_E1A2_N}]
set_property -dict {PACKAGE_PIN AP41  IOSTANDARD LVCMOS12   } [get_ports {F1_LA26_E1A2_P}]
set_property -dict {PACKAGE_PIN AM37  IOSTANDARD LVCMOS12   } [get_ports {F1_LA27_E1A3_N}]
set_property -dict {PACKAGE_PIN AL36  IOSTANDARD LVCMOS12   } [get_ports {F1_LA27_E1A3_P}]
set_property -dict {PACKAGE_PIN BE13  IOSTANDARD LVCMOS12   } [get_ports {F1_LA28_E2AS_N}]
set_property -dict {PACKAGE_PIN BD14  IOSTANDARD LVCMOS12   } [get_ports {F1_LA28_E2AS_P}]
set_property -dict {PACKAGE_PIN BC12  IOSTANDARD LVCMOS12   } [get_ports {F1_LA29_E2A0_N}]
set_property -dict {PACKAGE_PIN BD13  IOSTANDARD LVCMOS12   } [get_ports {F1_LA29_E2A0_P}]
set_property -dict {PACKAGE_PIN BD11  IOSTANDARD LVCMOS12   } [get_ports {F1_LA30_E2A1_N}]
set_property -dict {PACKAGE_PIN BE12  IOSTANDARD LVCMOS12   } [get_ports {F1_LA30_E2A1_P}]
set_property -dict {PACKAGE_PIN BF7   IOSTANDARD LVCMOS12   } [get_ports {F1_LA31_E2A2_N}]
set_property -dict {PACKAGE_PIN BF8   IOSTANDARD LVCMOS12   } [get_ports {F1_LA31_E2A2_P}]
set_property -dict {PACKAGE_PIN BE10  IOSTANDARD LVCMOS12   } [get_ports {F1_LA32_E2A3_N}]
set_property -dict {PACKAGE_PIN BD10  IOSTANDARD LVCMOS12   } [get_ports {F1_LA32_E2A3_P}]
set_property -dict {PACKAGE_PIN BF13  IOSTANDARD LVCMOS12   } [get_ports {F1_LA33_E2AC_N}]
set_property -dict {PACKAGE_PIN BF14  IOSTANDARD LVCMOS12   } [get_ports {F1_LA33_E2AC_P}]
set_property -dict {PACKAGE_PIN AT42  IOSTANDARD LVCMOS12   } [get_ports {F1_LA00_E0BS_CC_N}]
set_property -dict {PACKAGE_PIN AR41  IOSTANDARD LVCMOS12   } [get_ports {F1_LA00_E0BS_CC_P}]
set_property -dict {PACKAGE_PIN AU46  IOSTANDARD LVCMOS12   } [get_ports {F1_LA01_E0BC_CC_N}]
set_property -dict {PACKAGE_PIN AV46  IOSTANDARD LVCMOS12   } [get_ports {F1_LA01_E0BC_CC_P}]
set_property -dict {PACKAGE_PIN AM43  IOSTANDARD LVCMOS12   } [get_ports {F1_LA17_E2BS_CC_N}]
set_property -dict {PACKAGE_PIN AL42  IOSTANDARD LVCMOS12   } [get_ports {F1_LA17_E2BS_CC_P}]
set_property -dict {PACKAGE_PIN BF11  IOSTANDARD LVCMOS12   } [get_ports {F1_LA18_E2BC_CC_N}]
set_property -dict {PACKAGE_PIN BF12  IOSTANDARD LVCMOS12   } [get_ports {F1_LA18_E2BC_CC_P}]
set_property -dict {PACKAGE_PIN AL46  IOSTANDARD LVCMOS12   } [get_ports {F1_CLK0_E1BC_N}]
set_property -dict {PACKAGE_PIN AL45  IOSTANDARD LVCMOS12   } [get_ports {F1_CLK0_E1BC_P}]
set_property -dict {PACKAGE_PIN AR37  IOSTANDARD LVCMOS12   } [get_ports {F1_CLK1_E1BS_N}]
set_property -dict {PACKAGE_PIN AT37  IOSTANDARD LVCMOS12   } [get_ports {F1_CLK1_E1BS_P}]

# Clock Generator HDSP M2 RefClk 0
# set_property PACKAGE_PIN L2    [get_ports {HSDP_M2_CLK0_N}] # GTYP
# set_property PACKAGE_PIN L3    [get_ports {HSDP_M2_CLK0_P}] # GTYP

# Clock Generator CG2 RefClk 1
# set_property PACKAGE_PIN K4    [get_ports {HSDP_M2_CLK1_N}] # GTYP
# set_property PACKAGE_PIN K5    [get_ports {HSDP_M2_CLK1_P}] # GTYP

# PL I2C
set_property -dict {PACKAGE_PIN AA40  IOSTANDARD LVCMOS18   } [get_ports {I2C_USER_INT_N}]
set_property -dict {PACKAGE_PIN W41   IOSTANDARD LVCMOS18   } [get_ports {I2C_USER_SCL}]
set_property -dict {PACKAGE_PIN AA39  IOSTANDARD LVCMOS18   } [get_ports {I2C_USER_SDA}]

# IO Connector
set_property -dict {PACKAGE_PIN V42   IOSTANDARD LVCMOS18   } [get_ports {X3_D0}]
set_property -dict {PACKAGE_PIN V43   IOSTANDARD LVCMOS18   } [get_ports {X3_D1}]
set_property -dict {PACKAGE_PIN V41   IOSTANDARD LVCMOS18   } [get_ports {X3_D2}]
set_property -dict {PACKAGE_PIN U42   IOSTANDARD LVCMOS18   } [get_ports {X3_D3}]

# LPDDR5 Memory
set_property -dict {PACKAGE_PIN AG9   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_ca[0]}]
set_property -dict {PACKAGE_PIN AH9   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_ca[1]}]
set_property -dict {PACKAGE_PIN AD6   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_ca[2]}]
set_property -dict {PACKAGE_PIN AF4   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_ca[3]}]
set_property -dict {PACKAGE_PIN AF5   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_ca[4]}]
set_property -dict {PACKAGE_PIN AJ1   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_ca[5]}]
set_property -dict {PACKAGE_PIN AG1   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_ca[6]}]
set_property -dict {PACKAGE_PIN AK9   IOSTANDARD LVCMOS10   } [get_ports {C0_LPDDR5X_bank700_701_cs[0]}]
set_property -dict {PACKAGE_PIN AL8   IOSTANDARD LVCMOS10   } [get_ports {C0_LPDDR5X_bank700_701_cs[1]}]
set_property -dict {PACKAGE_PIN AG10  IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[0]}]
set_property -dict {PACKAGE_PIN AH8   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[1]}]
set_property -dict {PACKAGE_PIN AF10  IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[2]}]
set_property -dict {PACKAGE_PIN AG7   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[3]}]
set_property -dict {PACKAGE_PIN AE6   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[4]}]
set_property -dict {PACKAGE_PIN AG6   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[5]}]
set_property -dict {PACKAGE_PIN AE5   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[6]}]
set_property -dict {PACKAGE_PIN AF7   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[7]}]
set_property -dict {PACKAGE_PIN AH3   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[8]}]
set_property -dict {PACKAGE_PIN AF2   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[9]}]
set_property -dict {PACKAGE_PIN AU5   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_ca[0]}]
set_property -dict {PACKAGE_PIN AU2   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_ca[1]}]
set_property -dict {PACKAGE_PIN AU1   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_ca[2]}]
set_property -dict {PACKAGE_PIN AW9   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_ca[3]}]
set_property -dict {PACKAGE_PIN AV2   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_ca[4]}]
set_property -dict {PACKAGE_PIN BA10  IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_ca[5]}]
set_property -dict {PACKAGE_PIN AW10  IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_ca[6]}]
set_property -dict {PACKAGE_PIN AY6   IOSTANDARD LVCMOS10   } [get_ports {C1_LPDDR5X_bank703_704_cs[0]}]
set_property -dict {PACKAGE_PIN BA5   IOSTANDARD LVCMOS10   } [get_ports {C1_LPDDR5X_bank703_704_cs[1]}]
set_property -dict {PACKAGE_PIN AW4   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[0]}]
set_property -dict {PACKAGE_PIN AT3   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[1]}]
set_property -dict {PACKAGE_PIN AU3   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[2]}]
set_property -dict {PACKAGE_PIN AW1   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[3]}]
set_property -dict {PACKAGE_PIN AV1   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[4]}]
set_property -dict {PACKAGE_PIN AW3   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[5]}]
set_property -dict {PACKAGE_PIN AY3   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[6]}]
set_property -dict {PACKAGE_PIN AY5   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[7]}]
set_property -dict {PACKAGE_PIN AW13  IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[8]}]
set_property -dict {PACKAGE_PIN AV10  IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[9]}]
set_property -dict {PACKAGE_PIN AH39  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_ca[0]}]
set_property -dict {PACKAGE_PIN AE42  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_ca[1]}]
set_property -dict {PACKAGE_PIN AF46  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_ca[2]}]
set_property -dict {PACKAGE_PIN AE41  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_ca[3]}]
set_property -dict {PACKAGE_PIN AE46  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_ca[4]}]
set_property -dict {PACKAGE_PIN AD39  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_ca[5]}]
set_property -dict {PACKAGE_PIN AC44  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_ca[6]}]
set_property -dict {PACKAGE_PIN AH44  IOSTANDARD LVCMOS10   } [get_ports {C2_LPDDR5X_bank708_709_cs[0]}]
set_property -dict {PACKAGE_PIN AH45  IOSTANDARD LVCMOS10   } [get_ports {C2_LPDDR5X_bank708_709_cs[1]}]
set_property -dict {PACKAGE_PIN AD43  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[0]}]
set_property -dict {PACKAGE_PIN AE44  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[1]}]
set_property -dict {PACKAGE_PIN AD42  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[2]}]
set_property -dict {PACKAGE_PIN AE45  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[3]}]
set_property -dict {PACKAGE_PIN AC46  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[4]}]
set_property -dict {PACKAGE_PIN AB46  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[5]}]
set_property -dict {PACKAGE_PIN AC41  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[6]}]
set_property -dict {PACKAGE_PIN AB41  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[7]}]
set_property -dict {PACKAGE_PIN AE36  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[8]}]
set_property -dict {PACKAGE_PIN AF38  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[9]}]
set_property -dict {PACKAGE_PIN BF39  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_ca[0]}]
set_property -dict {PACKAGE_PIN BE37  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_ca[1]}]
set_property -dict {PACKAGE_PIN BF42  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_ca[2]}]
set_property -dict {PACKAGE_PIN AW46  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_ca[3]}]
set_property -dict {PACKAGE_PIN BE42  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_ca[4]}]
set_property -dict {PACKAGE_PIN BE36  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_ca[5]}]
set_property -dict {PACKAGE_PIN BB46  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_ca[6]}]
set_property -dict {PACKAGE_PIN BA38  IOSTANDARD LVCMOS10   } [get_ports {C3_LPDDR5X_bank710_711_cs[0]}]
set_property -dict {PACKAGE_PIN AY38  IOSTANDARD LVCMOS10   } [get_ports {C3_LPDDR5X_bank710_711_cs[1]}]
set_property -dict {PACKAGE_PIN BF44  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[0]}]
set_property -dict {PACKAGE_PIN BC46  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[1]}]
set_property -dict {PACKAGE_PIN BE45  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[2]}]
set_property -dict {PACKAGE_PIN BD46  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[3]}]
set_property -dict {PACKAGE_PIN BC44  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[4]}]
set_property -dict {PACKAGE_PIN BD43  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[5]}]
set_property -dict {PACKAGE_PIN BD41  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[6]}]
set_property -dict {PACKAGE_PIN BD40  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[7]}]
set_property -dict {PACKAGE_PIN BF37  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[8]}]
set_property -dict {PACKAGE_PIN BD37  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[9]}]
set_property -dict {PACKAGE_PIN AD7   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dmi[0]}]
set_property -dict {PACKAGE_PIN AF1   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dmi[1]}]
set_property -dict {PACKAGE_PIN AJ2   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dmi[2]}]
set_property -dict {PACKAGE_PIN AJ5   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dmi[3]}]
set_property -dict {PACKAGE_PIN AG4   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[10]}]
set_property -dict {PACKAGE_PIN AG3   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[11]}]
set_property -dict {PACKAGE_PIN AD1   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[12]}]
set_property -dict {PACKAGE_PIN AD3   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[13]}]
set_property -dict {PACKAGE_PIN AD4   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[14]}]
set_property -dict {PACKAGE_PIN AE1   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[15]}]
set_property -dict {PACKAGE_PIN AL1   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[16]}]
set_property -dict {PACKAGE_PIN AM4   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[17]}]
set_property -dict {PACKAGE_PIN AL3   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[18]}]
set_property -dict {PACKAGE_PIN AK1   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[19]}]
set_property -dict {PACKAGE_PIN AL2   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[20]}]
set_property -dict {PACKAGE_PIN AM5   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[21]}]
set_property -dict {PACKAGE_PIN AH2   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[22]}]
set_property -dict {PACKAGE_PIN AH1   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[23]}]
set_property -dict {PACKAGE_PIN AM11  IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[24]}]
set_property -dict {PACKAGE_PIN AL11  IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[25]}]
set_property -dict {PACKAGE_PIN AK10  IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[26]}]
set_property -dict {PACKAGE_PIN AJ8   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[27]}]
set_property -dict {PACKAGE_PIN AJ10  IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[28]}]
set_property -dict {PACKAGE_PIN AK6   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[29]}]
set_property -dict {PACKAGE_PIN AK7   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[30]}]
set_property -dict {PACKAGE_PIN AJ7   IOSTANDARD LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_dq[31]}]
set_property -dict {PACKAGE_PIN AT1   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dmi[0]}]
set_property -dict {PACKAGE_PIN AU6   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dmi[1]}]
set_property -dict {PACKAGE_PIN BC9   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dmi[2]}]
set_property -dict {PACKAGE_PIN BA11  IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dmi[3]}]
set_property -dict {PACKAGE_PIN AV11  IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[10]}]
set_property -dict {PACKAGE_PIN AW12  IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[11]}]
set_property -dict {PACKAGE_PIN AW7   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[12]}]
set_property -dict {PACKAGE_PIN AW6   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[13]}]
set_property -dict {PACKAGE_PIN AU9   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[14]}]
set_property -dict {PACKAGE_PIN AU8   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[15]}]
set_property -dict {PACKAGE_PIN BB7   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[16]}]
set_property -dict {PACKAGE_PIN BB6   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[17]}]
set_property -dict {PACKAGE_PIN BB4   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[18]}]
set_property -dict {PACKAGE_PIN BA4   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[19]}]
set_property -dict {PACKAGE_PIN BB3   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[20]}]
set_property -dict {PACKAGE_PIN BA2   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[21]}]
set_property -dict {PACKAGE_PIN BA1   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[22]}]
set_property -dict {PACKAGE_PIN BB1   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[23]}]
set_property -dict {PACKAGE_PIN AY12  IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[24]}]
set_property -dict {PACKAGE_PIN BB12  IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[25]}]
set_property -dict {PACKAGE_PIN BC11  IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[26]}]
set_property -dict {PACKAGE_PIN AY11  IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[27]}]
set_property -dict {PACKAGE_PIN BA8   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[28]}]
set_property -dict {PACKAGE_PIN BB9   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[29]}]
set_property -dict {PACKAGE_PIN BA7   IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[30]}]
set_property -dict {PACKAGE_PIN BB10  IOSTANDARD LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_dq[31]}]
set_property -dict {PACKAGE_PIN AC43  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dmi[0]}]
set_property -dict {PACKAGE_PIN AE39  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dmi[1]}]
set_property -dict {PACKAGE_PIN AH38  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dmi[2]}]
set_property -dict {PACKAGE_PIN AH41  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dmi[3]}]
set_property -dict {PACKAGE_PIN AE38  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[10]}]
set_property -dict {PACKAGE_PIN AD36  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[11]}]
set_property -dict {PACKAGE_PIN AB38  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[12]}]
set_property -dict {PACKAGE_PIN AF40  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[13]}]
set_property -dict {PACKAGE_PIN AF41  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[14]}]
set_property -dict {PACKAGE_PIN AC38  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[15]}]
set_property -dict {PACKAGE_PIN AJ38  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[16]}]
set_property -dict {PACKAGE_PIN AJ37  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[17]}]
set_property -dict {PACKAGE_PIN AH36  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[18]}]
set_property -dict {PACKAGE_PIN AG36  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[19]}]
set_property -dict {PACKAGE_PIN AJ41  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[20]}]
set_property -dict {PACKAGE_PIN AG40  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[21]}]
set_property -dict {PACKAGE_PIN AJ40  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[22]}]
set_property -dict {PACKAGE_PIN AG39  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[23]}]
set_property -dict {PACKAGE_PIN AK46  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[24]}]
set_property -dict {PACKAGE_PIN AK45  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[25]}]
set_property -dict {PACKAGE_PIN AJ44  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[26]}]
set_property -dict {PACKAGE_PIN AG45  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[27]}]
set_property -dict {PACKAGE_PIN AJ43  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[28]}]
set_property -dict {PACKAGE_PIN AG42  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[29]}]
set_property -dict {PACKAGE_PIN AG43  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[30]}]
set_property -dict {PACKAGE_PIN AG46  IOSTANDARD LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_dq[31]}]
set_property -dict {PACKAGE_PIN BB45  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dmi[0]}]
set_property -dict {PACKAGE_PIN BF38  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dmi[1]}]
set_property -dict {PACKAGE_PIN AY45  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dmi[2]}]
set_property -dict {PACKAGE_PIN BB40  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dmi[3]}]
set_property -dict {PACKAGE_PIN BF36  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[10]}]
set_property -dict {PACKAGE_PIN BB37  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[11]}]
set_property -dict {PACKAGE_PIN BC38  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[12]}]
set_property -dict {PACKAGE_PIN BD38  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[13]}]
set_property -dict {PACKAGE_PIN BF40  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[14]}]
set_property -dict {PACKAGE_PIN BF41  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[15]}]
set_property -dict {PACKAGE_PIN AW43  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[16]}]
set_property -dict {PACKAGE_PIN AY44  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[17]}]
set_property -dict {PACKAGE_PIN AW42  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[18]}]
set_property -dict {PACKAGE_PIN AW45  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[19]}]
set_property -dict {PACKAGE_PIN BB42  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[20]}]
set_property -dict {PACKAGE_PIN BA43  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[21]}]
set_property -dict {PACKAGE_PIN BA46  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[22]}]
set_property -dict {PACKAGE_PIN AY46  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[23]}]
set_property -dict {PACKAGE_PIN BA34  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[24]}]
set_property -dict {PACKAGE_PIN BB34  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[25]}]
set_property -dict {PACKAGE_PIN AY36  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[26]}]
set_property -dict {PACKAGE_PIN BA37  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[27]}]
set_property -dict {PACKAGE_PIN AW39  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[28]}]
set_property -dict {PACKAGE_PIN AY41  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[29]}]
set_property -dict {PACKAGE_PIN AW40  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[30]}]
set_property -dict {PACKAGE_PIN AY39  IOSTANDARD LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_dq[31]}]
set_property -dict {PACKAGE_PIN AM1   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_ck_c[0]}]
set_property -dict {PACKAGE_PIN AM2   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_ck_t[0]}]
set_property -dict {PACKAGE_PIN BA14  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_ck_c[0]}]
set_property -dict {PACKAGE_PIN AY14  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_ck_t[0]}]
set_property -dict {PACKAGE_PIN AK37  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_ck_c[0]}]
set_property -dict {PACKAGE_PIN AK36  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_ck_t[0]}]
set_property -dict {PACKAGE_PIN BC42  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_ck_c[0]}]
set_property -dict {PACKAGE_PIN BC41  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_ck_t[0]}]
set_property -dict {PACKAGE_PIN AH5   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_wck_c[0]}]
set_property -dict {PACKAGE_PIN AC1   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_wck_c[1]}]
set_property -dict {PACKAGE_PIN AK3   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_wck_c[2]}]
set_property -dict {PACKAGE_PIN AM7   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_wck_c[3]}]
set_property -dict {PACKAGE_PIN AH6   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_wck_t[0]}]
set_property -dict {PACKAGE_PIN AC2   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_wck_t[1]}]
set_property -dict {PACKAGE_PIN AK4   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_wck_t[2]}]
set_property -dict {PACKAGE_PIN AM8   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_wck_t[3]}]
set_property -dict {PACKAGE_PIN AY1   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_wck_c[0]}]
set_property -dict {PACKAGE_PIN AV7   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_wck_c[1]}]
set_property -dict {PACKAGE_PIN BC1   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_wck_c[2]}]
set_property -dict {PACKAGE_PIN AY8   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_wck_c[3]}]
set_property -dict {PACKAGE_PIN AY2   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_wck_t[0]}]
set_property -dict {PACKAGE_PIN AV8   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_wck_t[1]}]
set_property -dict {PACKAGE_PIN BC2   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_wck_t[2]}]
set_property -dict {PACKAGE_PIN AY9   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_wck_t[3]}]
set_property -dict {PACKAGE_PIN AF44  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_wck_c[0]}]
set_property -dict {PACKAGE_PIN AC37  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_wck_c[1]}]
set_property -dict {PACKAGE_PIN AF37  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_wck_c[2]}]
set_property -dict {PACKAGE_PIN AK43  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_wck_c[3]}]
set_property -dict {PACKAGE_PIN AF43  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_wck_t[0]}]
set_property -dict {PACKAGE_PIN AD37  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_wck_t[1]}]
set_property -dict {PACKAGE_PIN AG37  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_wck_t[2]}]
set_property -dict {PACKAGE_PIN AK42  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_wck_t[3]}]
set_property -dict {PACKAGE_PIN BC45  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_wck_c[0]}]
set_property -dict {PACKAGE_PIN BE40  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_wck_c[1]}]
set_property -dict {PACKAGE_PIN BA44  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_wck_c[2]}]
set_property -dict {PACKAGE_PIN BB39  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_wck_c[3]}]
set_property -dict {PACKAGE_PIN BD44  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_wck_t[0]}]
set_property -dict {PACKAGE_PIN BE39  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_wck_t[1]}]
set_property -dict {PACKAGE_PIN BB43  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_wck_t[2]}]
set_property -dict {PACKAGE_PIN BC39  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_wck_t[3]}]
set_property -dict {PACKAGE_PIN AC7   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_rdqs_c[0]}]
set_property -dict {PACKAGE_PIN AE2   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_rdqs_c[1]}]
set_property -dict {PACKAGE_PIN AL5   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_rdqs_c[2]}]
set_property -dict {PACKAGE_PIN AL9   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_rdqs_c[3]}]
set_property -dict {PACKAGE_PIN AC8   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_rdqs_t[0]}]
set_property -dict {PACKAGE_PIN AE3   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_rdqs_t[1]}]
set_property -dict {PACKAGE_PIN AL6   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_rdqs_t[2]}]
set_property -dict {PACKAGE_PIN AM10  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C0_LPDDR5X_bank700_701_rdqs_t[3]}]
set_property -dict {PACKAGE_PIN AV4   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_rdqs_c[0]}]
set_property -dict {PACKAGE_PIN AU11  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_rdqs_c[1]}]
set_property -dict {PACKAGE_PIN BC5   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_rdqs_c[2]}]
set_property -dict {PACKAGE_PIN BB13  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_rdqs_c[3]}]
set_property -dict {PACKAGE_PIN AV5   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_rdqs_t[0]}]
set_property -dict {PACKAGE_PIN AU12  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_rdqs_t[1]}]
set_property -dict {PACKAGE_PIN BC6   IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_rdqs_t[2]}]
set_property -dict {PACKAGE_PIN BA13  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C1_LPDDR5X_bank703_704_rdqs_t[3]}]
set_property -dict {PACKAGE_PIN AD46  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_rdqs_c[0]}]
set_property -dict {PACKAGE_PIN AC40  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_rdqs_c[1]}]
set_property -dict {PACKAGE_PIN AK40  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_rdqs_c[2]}]
set_property -dict {PACKAGE_PIN AH46  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_rdqs_c[3]}]
set_property -dict {PACKAGE_PIN AD45  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_rdqs_t[0]}]
set_property -dict {PACKAGE_PIN AD40  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_rdqs_t[1]}]
set_property -dict {PACKAGE_PIN AK39  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_rdqs_t[2]}]
set_property -dict {PACKAGE_PIN AJ46  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C2_LPDDR5X_bank708_709_rdqs_t[3]}]
set_property -dict {PACKAGE_PIN BE43  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_rdqs_c[0]}]
set_property -dict {PACKAGE_PIN BB36  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_rdqs_c[1]}]
set_property -dict {PACKAGE_PIN AY42  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_rdqs_c[2]}]
set_property -dict {PACKAGE_PIN AY35  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_rdqs_c[3]}]
set_property -dict {PACKAGE_PIN BF43  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_rdqs_t[0]}]
set_property -dict {PACKAGE_PIN BC36  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_rdqs_t[1]}]
set_property -dict {PACKAGE_PIN BA41  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_rdqs_t[2]}]
set_property -dict {PACKAGE_PIN BA35  IOSTANDARD DIFF_LVSTL05_10 } [get_ports {C3_LPDDR5X_bank710_711_rdqs_t[3]}]
set_property -dict {PACKAGE_PIN AJ4   IOSTANDARD LVCMOS10   } [get_ports {C0_LPDDR5X_bank700_701_reset_n[0]}]
set_property -dict {PACKAGE_PIN AP2   IOSTANDARD LVDS12     } [get_ports {C0_C1_LPDDR5X_sys_clk_clk_n[0]}]
set_property -dict {PACKAGE_PIN AP3   IOSTANDARD LVDS12     } [get_ports {C0_C1_LPDDR5X_sys_clk_clk_p[0]}]
set_property -dict {PACKAGE_PIN BC8   IOSTANDARD LVCMOS10   } [get_ports {C1_LPDDR5X_bank703_704_reset_n[0]}]
set_property -dict {PACKAGE_PIN AH42  IOSTANDARD LVCMOS10   } [get_ports {C2_LPDDR5X_bank708_709_reset_n[0]}]
set_property -dict {PACKAGE_PIN BA40  IOSTANDARD LVCMOS10   } [get_ports {C3_LPDDR5X_bank710_711_reset_n[0]}]
set_property -dict {PACKAGE_PIN AP39  IOSTANDARD LVDS12     } [get_ports {C3_C4_LPDDR5X_sys_clk_clk_n[0]}]
set_property -dict {PACKAGE_PIN AP38  IOSTANDARD LVDS12     } [get_ports {C3_C4_LPDDR5X_sys_clk_clk_p[0]}]

# M2 Socket
# set_property PACKAGE_PIN H5    [get_ports {HSDP_M2_TX0_P}] # GTYP
# set_property PACKAGE_PIN H4    [get_ports {HSDP_M2_TX0_N}] # GTYP
# set_property PACKAGE_PIN F5    [get_ports {M2_TX1_P}] # GTYP
# set_property PACKAGE_PIN F4    [get_ports {M2_TX1_N}] # GTYP
# set_property PACKAGE_PIN D5    [get_ports {M2_TX2_P}] # GTYP
# set_property PACKAGE_PIN D4    [get_ports {M2_TX2_N}] # GTYP
# set_property PACKAGE_PIN B5    [get_ports {M2_TX3_P}] # GTYP
# set_property PACKAGE_PIN B4    [get_ports {M2_TX3_N}] # GTYP
# set_property PACKAGE_PIN J2    [get_ports {HSDP_M2_RX0_P}] # GTYP
# set_property PACKAGE_PIN J1    [get_ports {HSDP_M2_RX0_N}] # GTYP
# set_property PACKAGE_PIN G2    [get_ports {M2_RX1_P}] # GTYP
# set_property PACKAGE_PIN G1    [get_ports {M2_RX1_N}] # GTYP
# set_property PACKAGE_PIN E2    [get_ports {M2_RX2_P}] # GTYP
# set_property PACKAGE_PIN E1    [get_ports {M2_RX2_N}] # GTYP
# set_property PACKAGE_PIN C2    [get_ports {M2_RX3_P}] # GTYP
# set_property PACKAGE_PIN C1    [get_ports {M2_RX3_N}] # GTYP

# Clock Generator MGT Y2 RefClk 1
# set_property PACKAGE_PIN K7    [get_ports {MGT_Y2_CLK1_N}] # GTYP
# set_property PACKAGE_PIN L7    [get_ports {MGT_Y2_CLK1_P}] # GTYP

# Clock Generator MGT Y3 RefClk 0
# set_property PACKAGE_PIN F9    [get_ports {MGT_Y3_CLK0_N}] # GTYP
# set_property PACKAGE_PIN G9    [get_ports {MGT_Y3_CLK0_P}] # GTYP

# Clock Generator MGT Y3 RefClk 1
# set_property PACKAGE_PIN H10   [get_ports {MGT_Y3_CLK1_N}] # GTYP
# set_property PACKAGE_PIN J10   [get_ports {MGT_Y3_CLK1_P}] # GTYP

# PCIe Edge Connector
# set_property PACKAGE_PIN A13   [get_ports {PCIE_RX0_N}] # GTYP
# set_property PACKAGE_PIN B13   [get_ports {PCIE_RX0_P}] # GTYP
# set_property PACKAGE_PIN A11   [get_ports {PCIE_RX1_N}] # GTYP
# set_property PACKAGE_PIN B11   [get_ports {PCIE_RX1_P}] # GTYP
# set_property PACKAGE_PIN A9    [get_ports {PCIE_RX2_N}] # GTYP
# set_property PACKAGE_PIN B9    [get_ports {PCIE_RX2_P}] # GTYP
# set_property PACKAGE_PIN A7    [get_ports {PCIE_RX3_N}] # GTYP
# set_property PACKAGE_PIN B7    [get_ports {PCIE_RX3_P}] # GTYP
# set_property PACKAGE_PIN A21   [get_ports {PCIE_RX4_N}] # GTYP
# set_property PACKAGE_PIN B21   [get_ports {PCIE_RX4_P}] # GTYP
# set_property PACKAGE_PIN A19   [get_ports {PCIE_RX5_N}] # GTYP
# set_property PACKAGE_PIN B19   [get_ports {PCIE_RX5_P}] # GTYP
# set_property PACKAGE_PIN A17   [get_ports {PCIE_RX6_N}] # GTYP
# set_property PACKAGE_PIN B17   [get_ports {PCIE_RX6_P}] # GTYP
# set_property PACKAGE_PIN A15   [get_ports {PCIE_RX7_N}] # GTYP
# set_property PACKAGE_PIN B15   [get_ports {PCIE_RX7_P}] # GTYP
# set_property PACKAGE_PIN D14   [get_ports {PCIE_TX0_N}] # GTYP
# set_property PACKAGE_PIN E14   [get_ports {PCIE_TX0_P}] # GTYP
# set_property PACKAGE_PIN D12   [get_ports {PCIE_TX1_N}] # GTYP
# set_property PACKAGE_PIN E12   [get_ports {PCIE_TX1_P}] # GTYP
# set_property PACKAGE_PIN D10   [get_ports {PCIE_TX2_N}] # GTYP
# set_property PACKAGE_PIN E10   [get_ports {PCIE_TX2_P}] # GTYP
# set_property PACKAGE_PIN D8    [get_ports {PCIE_TX3_N}] # GTYP
# set_property PACKAGE_PIN E8    [get_ports {PCIE_TX3_P}] # GTYP
# set_property PACKAGE_PIN D22   [get_ports {PCIE_TX4_N}] # GTYP
# set_property PACKAGE_PIN E22   [get_ports {PCIE_TX4_P}] # GTYP
# set_property PACKAGE_PIN D20   [get_ports {PCIE_TX5_N}] # GTYP
# set_property PACKAGE_PIN E20   [get_ports {PCIE_TX5_P}] # GTYP
# set_property PACKAGE_PIN D18   [get_ports {PCIE_TX6_N}] # GTYP
# set_property PACKAGE_PIN E18   [get_ports {PCIE_TX6_P}] # GTYP
# set_property PACKAGE_PIN D16   [get_ports {PCIE_TX7_N}] # GTYP
# set_property PACKAGE_PIN E16   [get_ports {PCIE_TX7_P}] # GTYP

# Clock Generator PCIE RefClk
# set_property PACKAGE_PIN F7    [get_ports {PCIE_REFCLK_N}] # GTYP
# set_property PACKAGE_PIN G7    [get_ports {PCIE_REFCLK_P}] # GTYP

# PL 100 MHz input connected to clkgen OUT0
set_property -dict {PACKAGE_PIN Y42   IOSTANDARD DIFF_SSTL18_I } [get_ports {CLK100_PL_N}]
set_property -dict {PACKAGE_PIN Y41   IOSTANDARD DIFF_SSTL18_I } [get_ports {CLK100_PL_P}]

# QSFP28 Connector
# set_property PACKAGE_PIN N46   [get_ports {QSFP_RX1_N}] # GTYP
# set_property PACKAGE_PIN N45   [get_ports {QSFP_RX1_P}] # GTYP
# set_property PACKAGE_PIN J46   [get_ports {QSFP_RX2_N}] # GTYP
# set_property PACKAGE_PIN J45   [get_ports {QSFP_RX2_P}] # GTYP
# set_property PACKAGE_PIN L46   [get_ports {QSFP_RX3_N}] # GTYP
# set_property PACKAGE_PIN L45   [get_ports {QSFP_RX3_P}] # GTYP
# set_property PACKAGE_PIN G46   [get_ports {QSFP_RX4_N}] # GTYP
# set_property PACKAGE_PIN G45   [get_ports {QSFP_RX4_P}] # GTYP
# set_property PACKAGE_PIN P43   [get_ports {QSFP_TX1_N}] # GTYP
# set_property PACKAGE_PIN P42   [get_ports {QSFP_TX1_P}] # GTYP
# set_property PACKAGE_PIN K43   [get_ports {QSFP_TX2_N}] # GTYP
# set_property PACKAGE_PIN K42   [get_ports {QSFP_TX2_P}] # GTYP
# set_property PACKAGE_PIN M43   [get_ports {QSFP_TX3_N}] # GTYP
# set_property PACKAGE_PIN M42   [get_ports {QSFP_TX3_P}] # GTYP
# set_property PACKAGE_PIN H43   [get_ports {QSFP_TX4_N}] # GTYP
# set_property PACKAGE_PIN H42   [get_ports {QSFP_TX4_P}] # GTYP

# Clock Generator QSFP RefClk 0
# set_property PACKAGE_PIN N41   [get_ports {QSFP_CLK0_N}] # GTYP
# set_property PACKAGE_PIN N40   [get_ports {QSFP_CLK0_P}] # GTYP

# SDI0 RX
# set_property PACKAGE_PIN A40   [get_ports {SDI0_RX_N}] # GTYP
# set_property PACKAGE_PIN B40   [get_ports {SDI0_RX_P}] # GTYP

# SDI0 TX
# set_property PACKAGE_PIN D41   [get_ports {SDI0_TX_N}] # GTYP
# set_property PACKAGE_PIN E41   [get_ports {SDI0_TX_P}] # GTYP

# SDI1 RX
# set_property PACKAGE_PIN A38   [get_ports {SDI1_RX_N}] # GTYP
# set_property PACKAGE_PIN B38   [get_ports {SDI1_RX_P}] # GTYP

# SDI1 TX
# set_property PACKAGE_PIN D39   [get_ports {SDI1_TX_N}] # GTYP
# set_property PACKAGE_PIN E39   [get_ports {SDI1_TX_P}] # GTYP

# SFP SDI Clock 1
# set_property PACKAGE_PIN K39   [get_ports {SFP_SDI_CLK1_N}] # GTYP
# set_property PACKAGE_PIN K38   [get_ports {SFP_SDI_CLK1_P}] # GTYP

# QSFP Clock 1
# set_property PACKAGE_PIN M39   [get_ports {QSFP_CLK1_N}] # GTYP
# set_property PACKAGE_PIN M38   [get_ports {QSFP_CLK1_P}] # GTYP

# Clock Generator SFP SDI RefClk 0
# set_property PACKAGE_PIN L41   [get_ports {SFP_SDI_CLK0_N}] # GTYP
# set_property PACKAGE_PIN L40   [get_ports {SFP_SDI_CLK0_P}] # GTYP

# USB0 TypeC Controller
# Dedicated PS pin, no PL constraint generated: R1 USB3_TXRXN1_504 [get_ports {USB0_SSRX_N}]
# Dedicated PS pin, no PL constraint generated: R2 USB3_TXRXP1_504 [get_ports {USB0_SSRX_P}]
# Dedicated PS pin, no PL constraint generated: V4 USB3_TXN0_504 [get_ports {USB0_SSTX_N}]
# Dedicated PS pin, no PL constraint generated: V5 USB3_TXP0_504 [get_ports {USB0_SSTX_P}]

# LED
set_property -dict {PACKAGE_PIN Y45   IOSTANDARD LVCMOS18   } [get_ports {XVE70_LED0_N}]
set_property -dict {PACKAGE_PIN Y46   IOSTANDARD LVCMOS18   } [get_ports {XVE70_LED1_N}]
set_property -dict {PACKAGE_PIN Y43   IOSTANDARD LVCMOS18   } [get_ports {XVE70_LED2_N}]
set_property -dict {PACKAGE_PIN W43   IOSTANDARD LVCMOS18   } [get_ports {XVE70_LED3_N}]
