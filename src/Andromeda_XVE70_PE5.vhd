----------------------------------------------------------------------------------------------------
-- Copyright (c) 2025 by Enclustra GmbH, Switzerland.
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy of
-- this hardware, software, firmware, and associated documentation files (the
-- "Product"), to deal in the Product without restriction, including without
-- limitation the rights to use, copy, modify, merge, publish, distribute,
-- sublicense, and/or sell copies of the Product, and to permit persons to whom the
-- Product is furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Product.
--
-- THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
-- INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
-- PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
-- HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
-- OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
-- PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
----------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
-- libraries
----------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

----------------------------------------------------------------------------------------------------
-- entity declaration
----------------------------------------------------------------------------------------------------
entity Andromeda_XVE70_PE5 is
  
  port (
    
    -- DIP Switches
    DIP1_N_DP_AUX_P                : in      std_logic;
    DIP2_N_DP_AUX_N                : in      std_logic;
    
    -- User Led
    LED2_N_DIP0_N                  : out     std_logic;
    LED3_N_PWR_SYNC                : out     std_logic;
    
    -- Clock Generator 1 C2M RefClk
    CLK_CG1_C2M_N                  : in      std_logic;
    CLK_CG1_C2M_P                  : in      std_logic;
    
    -- Clock Generator 1 M2C input clock 1
    CLK_CG1_M2C_N                  : out     std_logic;
    CLK_CG1_M2C_P                  : out     std_logic;
    
    -- Clock Generator C2M RefClk
    CLK_CG2_C2M_N                  : in      std_logic;
    CLK_CG2_C2M_P                  : in      std_logic;
    
    -- Clock Generator 2 M2C input clock 1
    CLK_CG2_M2C_N                  : out     std_logic;
    CLK_CG2_M2C_P                  : out     std_logic;
    
    -- FMC Connector 0
    F0_HA02_E3B0_N                 : inout   std_logic;
    F0_HA02_E3B0_P                 : inout   std_logic;
    F0_HA03_E3B1_N                 : inout   std_logic;
    F0_HA03_E3B1_P                 : inout   std_logic;
    F0_HA04_E3B2_N                 : inout   std_logic;
    F0_HA04_E3B2_P                 : inout   std_logic;
    F0_HA05_E3B3_N                 : inout   std_logic;
    F0_HA05_E3B3_P                 : inout   std_logic;
    F0_HA06_E3AS_N                 : inout   std_logic;
    F0_HA06_E3AS_P                 : inout   std_logic;
    F0_HA07_E3A0_N                 : inout   std_logic;
    F0_HA07_E3A0_P                 : inout   std_logic;
    F0_HA08_E3A1_N                 : inout   std_logic;
    F0_HA08_E3A1_P                 : inout   std_logic;
    F0_HA09_E3A2_N                 : inout   std_logic;
    F0_HA09_E3A2_P                 : inout   std_logic;
    F0_HA10_E3A3_N                 : inout   std_logic;
    F0_HA10_E3A3_P                 : inout   std_logic;
    F0_HA11_E3AC_N                 : inout   std_logic;
    F0_HA11_E3AC_P                 : inout   std_logic;
    F0_HA12_E4AS_N                 : inout   std_logic;
    F0_HA12_E4AS_P                 : inout   std_logic;
    F0_HA13_E4A0_N                 : inout   std_logic;
    F0_HA13_E4A0_P                 : inout   std_logic;
    F0_HA14_E4A1_N                 : inout   std_logic;
    F0_HA14_E4A1_P                 : inout   std_logic;
    F0_HA15_E4A2_N                 : inout   std_logic;
    F0_HA15_E4A2_P                 : inout   std_logic;
    F0_HA16_E4A3_N                 : inout   std_logic;
    F0_HA16_E4A3_P                 : inout   std_logic;
    F0_HA18_E4B0_N                 : inout   std_logic;
    F0_HA18_E4B0_P                 : inout   std_logic;
    F0_HA19_E4B1_N                 : inout   std_logic;
    F0_HA19_E4B1_P                 : inout   std_logic;
    F0_HA20_E4B2_N                 : inout   std_logic;
    F0_HA20_E4B2_P                 : inout   std_logic;
    F0_HA21_E4B3_N                 : inout   std_logic;
    F0_HA21_E4B3_P                 : inout   std_logic;
    F0_HA22_E4BC_N                 : inout   std_logic;
    F0_HA22_E4BC_P                 : inout   std_logic;
    F0_HA23_E4AC_N                 : inout   std_logic;
    F0_HA23_E4AC_P                 : inout   std_logic;
    F0_LA02_E0B0_N                 : inout   std_logic;
    F0_LA02_E0B0_P                 : inout   std_logic;
    F0_LA03_E0B1_N                 : inout   std_logic;
    F0_LA03_E0B1_P                 : inout   std_logic;
    F0_LA04_E0B2_N                 : inout   std_logic;
    F0_LA04_E0B2_P                 : inout   std_logic;
    F0_LA05_E0B3_N                 : inout   std_logic;
    F0_LA05_E0B3_P                 : inout   std_logic;
    F0_LA06_E0AS_N                 : inout   std_logic;
    F0_LA06_E0AS_P                 : inout   std_logic;
    F0_LA07_E0A0_N                 : inout   std_logic;
    F0_LA07_E0A0_P                 : inout   std_logic;
    F0_LA08_E0A1_N                 : inout   std_logic;
    F0_LA08_E0A1_P                 : inout   std_logic;
    F0_LA09_E0A2_N                 : inout   std_logic;
    F0_LA09_E0A2_P                 : inout   std_logic;
    F0_LA10_E0A3_N                 : inout   std_logic;
    F0_LA10_E0A3_P                 : inout   std_logic;
    F0_LA11_E0AC_N                 : inout   std_logic;
    F0_LA11_E0AC_P                 : inout   std_logic;
    F0_LA12_E1B0_N                 : inout   std_logic;
    F0_LA12_E1B0_P                 : inout   std_logic;
    F0_LA13_E1B1_N                 : inout   std_logic;
    F0_LA13_E1B1_P                 : inout   std_logic;
    F0_LA14_E1B2_N                 : inout   std_logic;
    F0_LA14_E1B2_P                 : inout   std_logic;
    F0_LA15_E1B3_N                 : inout   std_logic;
    F0_LA15_E1B3_P                 : inout   std_logic;
    F0_LA16_E1AC_N                 : inout   std_logic;
    F0_LA16_E1AC_P                 : inout   std_logic;
    F0_LA19_E2B0_N                 : inout   std_logic;
    F0_LA19_E2B0_P                 : inout   std_logic;
    F0_LA20_E2B1_N                 : inout   std_logic;
    F0_LA20_E2B1_P                 : inout   std_logic;
    F0_LA21_E2B2_N                 : inout   std_logic;
    F0_LA21_E2B2_P                 : inout   std_logic;
    F0_LA22_E2B3_N                 : inout   std_logic;
    F0_LA22_E2B3_P                 : inout   std_logic;
    F0_LA23_E1AS_N                 : inout   std_logic;
    F0_LA23_E1AS_P                 : inout   std_logic;
    F0_LA24_E1A0_N                 : inout   std_logic;
    F0_LA24_E1A0_P                 : inout   std_logic;
    F0_LA25_E1A1_N                 : inout   std_logic;
    F0_LA25_E1A1_P                 : inout   std_logic;
    F0_LA26_E1A2_N                 : inout   std_logic;
    F0_LA26_E1A2_P                 : inout   std_logic;
    F0_LA27_E1A3_N                 : inout   std_logic;
    F0_LA27_E1A3_P                 : inout   std_logic;
    F0_LA28_E2AS_N                 : inout   std_logic;
    F0_LA28_E2AS_P                 : inout   std_logic;
    F0_LA29_E2A0_N                 : inout   std_logic;
    F0_LA29_E2A0_P                 : inout   std_logic;
    F0_LA30_E2A1_N                 : inout   std_logic;
    F0_LA30_E2A1_P                 : inout   std_logic;
    F0_LA31_E2A2_N                 : inout   std_logic;
    F0_LA31_E2A2_P                 : inout   std_logic;
    F0_LA32_E2A3_N                 : inout   std_logic;
    F0_LA32_E2A3_P                 : inout   std_logic;
    F0_LA33_E2AC_N                 : inout   std_logic;
    F0_LA33_E2AC_P                 : inout   std_logic;
    F0_HA00_E3BS_CC_N              : inout   std_logic;
    F0_HA00_E3BS_CC_P              : inout   std_logic;
    F0_HA01_E3BC_CC_N              : inout   std_logic;
    F0_HA01_E3BC_CC_P              : inout   std_logic;
    F0_HA17_E4BS_CC_N              : inout   std_logic;
    F0_HA17_E4BS_CC_P              : inout   std_logic;
    F0_LA00_E0BS_CC_N              : inout   std_logic;
    F0_LA00_E0BS_CC_P              : inout   std_logic;
    F0_LA01_E0BC_CC_N              : inout   std_logic;
    F0_LA01_E0BC_CC_P              : inout   std_logic;
    F0_LA17_E2BS_CC_N              : inout   std_logic;
    F0_LA17_E2BS_CC_P              : inout   std_logic;
    F0_LA18_E2BC_CC_N              : inout   std_logic;
    F0_LA18_E2BC_CC_P              : inout   std_logic;
    F0_CLK0_E1BC_N                 : inout   std_logic;
    F0_CLK0_E1BC_P                 : inout   std_logic;
    F0_CLK1_E1BS_N                 : inout   std_logic;
    F0_CLK1_E1BS_P                 : inout   std_logic;
    
    -- FMC Connector 1
    F1_LA02_E0B0_N                 : inout   std_logic;
    F1_LA02_E0B0_P                 : inout   std_logic;
    F1_LA03_E0B1_N                 : inout   std_logic;
    F1_LA03_E0B1_P                 : inout   std_logic;
    F1_LA04_E0B2_N                 : inout   std_logic;
    F1_LA04_E0B2_P                 : inout   std_logic;
    F1_LA05_E0B3_N                 : inout   std_logic;
    F1_LA05_E0B3_P                 : inout   std_logic;
    F1_LA06_E0AS_N                 : inout   std_logic;
    F1_LA06_E0AS_P                 : inout   std_logic;
    F1_LA07_E0A0_N                 : inout   std_logic;
    F1_LA07_E0A0_P                 : inout   std_logic;
    F1_LA08_E0A1_N                 : inout   std_logic;
    F1_LA08_E0A1_P                 : inout   std_logic;
    F1_LA09_E0A2_N                 : inout   std_logic;
    F1_LA09_E0A2_P                 : inout   std_logic;
    F1_LA10_E0A3_N                 : inout   std_logic;
    F1_LA10_E0A3_P                 : inout   std_logic;
    F1_LA11_E0AC_N                 : inout   std_logic;
    F1_LA11_E0AC_P                 : inout   std_logic;
    F1_LA12_E1B0_N                 : inout   std_logic;
    F1_LA12_E1B0_P                 : inout   std_logic;
    F1_LA13_E1B1_N                 : inout   std_logic;
    F1_LA13_E1B1_P                 : inout   std_logic;
    F1_LA14_E1B2_N                 : inout   std_logic;
    F1_LA14_E1B2_P                 : inout   std_logic;
    F1_LA15_E1B3_N                 : inout   std_logic;
    F1_LA15_E1B3_P                 : inout   std_logic;
    F1_LA16_E1AC_N                 : inout   std_logic;
    F1_LA16_E1AC_P                 : inout   std_logic;
    F1_LA19_E2B0_N                 : inout   std_logic;
    F1_LA19_E2B0_P                 : inout   std_logic;
    F1_LA20_E2B1_N                 : inout   std_logic;
    F1_LA20_E2B1_P                 : inout   std_logic;
    F1_LA21_E2B2_N                 : inout   std_logic;
    F1_LA21_E2B2_P                 : inout   std_logic;
    F1_LA22_E2B3_N                 : inout   std_logic;
    F1_LA22_E2B3_P                 : inout   std_logic;
    F1_LA23_E1AS_N                 : inout   std_logic;
    F1_LA23_E1AS_P                 : inout   std_logic;
    F1_LA24_E1A0_N                 : inout   std_logic;
    F1_LA24_E1A0_P                 : inout   std_logic;
    F1_LA25_E1A1_N                 : inout   std_logic;
    F1_LA25_E1A1_P                 : inout   std_logic;
    F1_LA26_E1A2_N                 : inout   std_logic;
    F1_LA26_E1A2_P                 : inout   std_logic;
    F1_LA27_E1A3_N                 : inout   std_logic;
    F1_LA27_E1A3_P                 : inout   std_logic;
    F1_LA28_E2AS_N                 : inout   std_logic;
    F1_LA28_E2AS_P                 : inout   std_logic;
    F1_LA29_E2A0_N                 : inout   std_logic;
    F1_LA29_E2A0_P                 : inout   std_logic;
    F1_LA30_E2A1_N                 : inout   std_logic;
    F1_LA30_E2A1_P                 : inout   std_logic;
    F1_LA31_E2A2_N                 : inout   std_logic;
    F1_LA31_E2A2_P                 : inout   std_logic;
    F1_LA32_E2A3_N                 : inout   std_logic;
    F1_LA32_E2A3_P                 : inout   std_logic;
    F1_LA33_E2AC_N                 : inout   std_logic;
    F1_LA33_E2AC_P                 : inout   std_logic;
    F1_LA00_E0BS_CC_N              : inout   std_logic;
    F1_LA00_E0BS_CC_P              : inout   std_logic;
    F1_LA01_E0BC_CC_N              : inout   std_logic;
    F1_LA01_E0BC_CC_P              : inout   std_logic;
    F1_LA17_E2BS_CC_N              : inout   std_logic;
    F1_LA17_E2BS_CC_P              : inout   std_logic;
    F1_LA18_E2BC_CC_N              : inout   std_logic;
    F1_LA18_E2BC_CC_P              : inout   std_logic;
    F1_CLK0_E1BC_N                 : inout   std_logic;
    F1_CLK0_E1BC_P                 : inout   std_logic;
    F1_CLK1_E1BS_N                 : inout   std_logic;
    F1_CLK1_E1BS_P                 : inout   std_logic;
    
    -- PL I2C
    I2C_USER_INT_N                 : in      std_logic;
    I2C_USER_SCL                   : inout   std_logic;
    I2C_USER_SDA                   : inout   std_logic;
    
    -- IO Connector
    X3_D0                          : inout   std_logic;
    X3_D1                          : inout   std_logic;
    X3_D2                          : inout   std_logic;
    X3_D3                          : inout   std_logic;
    
    -- LPDDR5 Memory
    C0_LPDDR5X_bank700_701_ca      : out     std_logic_vector(6 downto 0);
    C0_LPDDR5X_bank700_701_cs      : out     std_logic_vector(1 downto 0);
    C0_LPDDR5X_bank700_701_dq      : inout   std_logic_vector(31 downto 0);
    C1_LPDDR5X_bank703_704_ca      : out     std_logic_vector(6 downto 0);
    C1_LPDDR5X_bank703_704_cs      : out     std_logic_vector(1 downto 0);
    C1_LPDDR5X_bank703_704_dq      : inout   std_logic_vector(31 downto 0);
    C2_LPDDR5X_bank708_709_ca      : out     std_logic_vector(6 downto 0);
    C2_LPDDR5X_bank708_709_cs      : out     std_logic_vector(1 downto 0);
    C2_LPDDR5X_bank708_709_dq      : inout   std_logic_vector(31 downto 0);
    C3_LPDDR5X_bank710_711_ca      : out     std_logic_vector(6 downto 0);
    C3_LPDDR5X_bank710_711_cs      : out     std_logic_vector(1 downto 0);
    C3_LPDDR5X_bank710_711_dq      : inout   std_logic_vector(31 downto 0);
    C0_LPDDR5X_bank700_701_dmi     : inout   std_logic_vector(3 downto 0);
    C1_LPDDR5X_bank703_704_dmi     : inout   std_logic_vector(3 downto 0);
    C2_LPDDR5X_bank708_709_dmi     : inout   std_logic_vector(3 downto 0);
    C3_LPDDR5X_bank710_711_dmi     : inout   std_logic_vector(3 downto 0);
    C0_LPDDR5X_bank700_701_ck_c    : out     std_logic_vector(0 downto 0);
    C0_LPDDR5X_bank700_701_ck_t    : out     std_logic_vector(0 downto 0);
    C1_LPDDR5X_bank703_704_ck_c    : out     std_logic_vector(0 downto 0);
    C1_LPDDR5X_bank703_704_ck_t    : out     std_logic_vector(0 downto 0);
    C2_LPDDR5X_bank708_709_ck_c    : out     std_logic_vector(0 downto 0);
    C2_LPDDR5X_bank708_709_ck_t    : out     std_logic_vector(0 downto 0);
    C3_LPDDR5X_bank710_711_ck_c    : out     std_logic_vector(0 downto 0);
    C3_LPDDR5X_bank710_711_ck_t    : out     std_logic_vector(0 downto 0);
    C0_LPDDR5X_bank700_701_wck_c   : out     std_logic_vector(3 downto 0);
    C0_LPDDR5X_bank700_701_wck_t   : out     std_logic_vector(3 downto 0);
    C1_LPDDR5X_bank703_704_wck_c   : out     std_logic_vector(3 downto 0);
    C1_LPDDR5X_bank703_704_wck_t   : out     std_logic_vector(3 downto 0);
    C2_LPDDR5X_bank708_709_wck_c   : out     std_logic_vector(3 downto 0);
    C2_LPDDR5X_bank708_709_wck_t   : out     std_logic_vector(3 downto 0);
    C3_LPDDR5X_bank710_711_wck_c   : out     std_logic_vector(3 downto 0);
    C3_LPDDR5X_bank710_711_wck_t   : out     std_logic_vector(3 downto 0);
    C0_LPDDR5X_bank700_701_rdqs_c  : in      std_logic_vector(3 downto 0);
    C0_LPDDR5X_bank700_701_rdqs_t  : in      std_logic_vector(3 downto 0);
    C1_LPDDR5X_bank703_704_rdqs_c  : in      std_logic_vector(3 downto 0);
    C1_LPDDR5X_bank703_704_rdqs_t  : in      std_logic_vector(3 downto 0);
    C2_LPDDR5X_bank708_709_rdqs_c  : in      std_logic_vector(3 downto 0);
    C2_LPDDR5X_bank708_709_rdqs_t  : in      std_logic_vector(3 downto 0);
    C3_LPDDR5X_bank710_711_rdqs_c  : in      std_logic_vector(3 downto 0);
    C3_LPDDR5X_bank710_711_rdqs_t  : in      std_logic_vector(3 downto 0);
    C0_LPDDR5X_bank700_701_reset_n : out     std_logic_vector(0 downto 0);
    C0_C1_LPDDR5X_sys_clk_clk_n    : in      std_logic_vector(0 downto 0);
    C0_C1_LPDDR5X_sys_clk_clk_p    : in      std_logic_vector(0 downto 0);
    C1_LPDDR5X_bank703_704_reset_n : out     std_logic_vector(0 downto 0);
    C2_LPDDR5X_bank708_709_reset_n : out     std_logic_vector(0 downto 0);
    C3_LPDDR5X_bank710_711_reset_n : out     std_logic_vector(0 downto 0);
    C3_C4_LPDDR5X_sys_clk_clk_n    : in      std_logic_vector(0 downto 0);
    C3_C4_LPDDR5X_sys_clk_clk_p    : in      std_logic_vector(0 downto 0);
    
    -- PL 100 MHz input connected to clkgen OUT0
    CLK100_PL_N                    : in      std_logic;
    CLK100_PL_P                    : in      std_logic;
    
    -- USB0 TypeC Controller
    USB0_SSRX_N                    : inout   std_logic;
    USB0_SSRX_P                    : inout   std_logic;
    USB0_SSTX_N                    : inout   std_logic;
    USB0_SSTX_P                    : inout   std_logic;
    
    -- LED
    XVE70_LED0_N                   : out     std_logic;
    XVE70_LED1_N                   : out     std_logic;
    XVE70_LED2_N                   : out     std_logic;
    XVE70_LED3_N                   : out     std_logic
  );
end Andromeda_XVE70_PE5;

architecture rtl of Andromeda_XVE70_PE5 is

  ----------------------------------------------------------------------------------------------------
  -- component declarations
  ----------------------------------------------------------------------------------------------------
  component Andromeda_XVE70 is
    port (
      Clk100                         : out    std_logic;
      Clk25                          : out    std_logic;
      Rst_N                          : out    std_logic;
      I2C_USER_sda_o                 : out    std_logic;
      I2C_USER_sda_t                 : out    std_logic;
      I2C_USER_sda_i                 : in     std_logic;
      I2C_USER_scl_o                 : out    std_logic;
      I2C_USER_scl_t                 : out    std_logic;
      I2C_USER_scl_i                 : in     std_logic;
      C2_LPDDR5X_bank708_709_dq      : inout  std_logic_vector(31 downto 0);
      C2_LPDDR5X_bank708_709_wck_t   : out    std_logic_vector(3 downto 0);
      C2_LPDDR5X_bank708_709_wck_c   : out    std_logic_vector(3 downto 0);
      C2_LPDDR5X_bank708_709_dmi     : inout  std_logic_vector(3 downto 0);
      C2_LPDDR5X_bank708_709_reset_n : out    std_logic_vector(0 downto 0);
      C2_LPDDR5X_bank708_709_rdqs_t  : in     std_logic_vector(3 downto 0);
      C2_LPDDR5X_bank708_709_rdqs_c  : in     std_logic_vector(3 downto 0);
      C2_LPDDR5X_bank708_709_ca      : out    std_logic_vector(6 downto 0);
      C2_LPDDR5X_bank708_709_ck_t    : out    std_logic_vector(0 downto 0);
      C2_LPDDR5X_bank708_709_ck_c    : out    std_logic_vector(0 downto 0);
      C2_LPDDR5X_bank708_709_cs      : out    std_logic_vector(1 downto 0);
      C3_LPDDR5X_bank710_711_dq      : inout  std_logic_vector(31 downto 0);
      C3_LPDDR5X_bank710_711_rdqs_t  : in     std_logic_vector(3 downto 0);
      C3_LPDDR5X_bank710_711_rdqs_c  : in     std_logic_vector(3 downto 0);
      C3_LPDDR5X_bank710_711_ca      : out    std_logic_vector(6 downto 0);
      C3_LPDDR5X_bank710_711_wck_t   : out    std_logic_vector(3 downto 0);
      C3_LPDDR5X_bank710_711_wck_c   : out    std_logic_vector(3 downto 0);
      C3_LPDDR5X_bank710_711_dmi     : inout  std_logic_vector(3 downto 0);
      C3_LPDDR5X_bank710_711_cs      : out    std_logic_vector(1 downto 0);
      C3_LPDDR5X_bank710_711_reset_n : out    std_logic_vector(0 downto 0);
      C3_LPDDR5X_bank710_711_ck_t    : out    std_logic_vector(0 downto 0);
      C3_LPDDR5X_bank710_711_ck_c    : out    std_logic_vector(0 downto 0);
      C3_C4_LPDDR5X_sys_clk_clk_p    : in     std_logic_vector(0 downto 0);
      C3_C4_LPDDR5X_sys_clk_clk_n    : in     std_logic_vector(0 downto 0);
      C1_LPDDR5X_bank703_704_ca      : out    std_logic_vector(6 downto 0);
      C1_LPDDR5X_bank703_704_ck_t    : out    std_logic_vector(0 downto 0);
      C1_LPDDR5X_bank703_704_ck_c    : out    std_logic_vector(0 downto 0);
      C1_LPDDR5X_bank703_704_cs      : out    std_logic_vector(1 downto 0);
      C1_LPDDR5X_bank703_704_dmi     : inout  std_logic_vector(3 downto 0);
      C1_LPDDR5X_bank703_704_dq      : inout  std_logic_vector(31 downto 0);
      C1_LPDDR5X_bank703_704_rdqs_t  : in     std_logic_vector(3 downto 0);
      C1_LPDDR5X_bank703_704_rdqs_c  : in     std_logic_vector(3 downto 0);
      C1_LPDDR5X_bank703_704_wck_t   : out    std_logic_vector(3 downto 0);
      C1_LPDDR5X_bank703_704_wck_c   : out    std_logic_vector(3 downto 0);
      C1_LPDDR5X_bank703_704_reset_n : out    std_logic_vector(0 downto 0);
      C0_LPDDR5X_bank700_701_ca      : out    std_logic_vector(6 downto 0);
      C0_LPDDR5X_bank700_701_ck_t    : out    std_logic_vector(0 downto 0);
      C0_LPDDR5X_bank700_701_ck_c    : out    std_logic_vector(0 downto 0);
      C0_LPDDR5X_bank700_701_cs      : out    std_logic_vector(1 downto 0);
      C0_LPDDR5X_bank700_701_dmi     : inout  std_logic_vector(3 downto 0);
      C0_LPDDR5X_bank700_701_dq      : inout  std_logic_vector(31 downto 0);
      C0_LPDDR5X_bank700_701_rdqs_t  : in     std_logic_vector(3 downto 0);
      C0_LPDDR5X_bank700_701_rdqs_c  : in     std_logic_vector(3 downto 0);
      C0_LPDDR5X_bank700_701_reset_n : out    std_logic_vector(0 downto 0);
      C0_LPDDR5X_bank700_701_wck_t   : out    std_logic_vector(3 downto 0);
      C0_LPDDR5X_bank700_701_wck_c   : out    std_logic_vector(3 downto 0);
      C0_C1_LPDDR5X_sys_clk_clk_p    : in     std_logic_vector(0 downto 0);
      C0_C1_LPDDR5X_sys_clk_clk_n    : in     std_logic_vector(0 downto 0);
      XVE70_LedOutput                : out    std_logic_vector(3 downto 0)
    );
  end component Andromeda_XVE70;
  

  ----------------------------------------------------------------------------------------------------
  -- signal declarations
  ----------------------------------------------------------------------------------------------------
  signal Clk100           : std_logic;
  signal Clk25            : std_logic;
  signal Rst_N            : std_logic;
  signal I2C_USER_sda_o   : std_logic;
  signal I2C_USER_sda_t   : std_logic;
  signal I2C_USER_sda_i   : std_logic;
  signal I2C_USER_scl_o   : std_logic;
  signal I2C_USER_scl_t   : std_logic;
  signal I2C_USER_scl_i   : std_logic;
  signal XVE70_LedOutput  : std_logic_vector(3 downto 0);
  
  ----------------------------------------------------------------------------------------------------
  -- attribute declarations
  ----------------------------------------------------------------------------------------------------

begin
  
  ----------------------------------------------------------------------------------------------------
  -- processor system instance
  ----------------------------------------------------------------------------------------------------
  Andromeda_XVE70_i: component Andromeda_XVE70
    port map (
      Clk100                         => Clk100,
      Clk25                          => Clk25,
      Rst_N                          => Rst_N,
      I2C_USER_sda_o                 => I2C_USER_sda_o,
      I2C_USER_sda_t                 => I2C_USER_sda_t,
      I2C_USER_sda_i                 => I2C_USER_sda_i,
      I2C_USER_scl_o                 => I2C_USER_scl_o,
      I2C_USER_scl_t                 => I2C_USER_scl_t,
      I2C_USER_scl_i                 => I2C_USER_scl_i,
      C2_LPDDR5X_bank708_709_dq      => C2_LPDDR5X_bank708_709_dq,
      C2_LPDDR5X_bank708_709_wck_t   => C2_LPDDR5X_bank708_709_wck_t,
      C2_LPDDR5X_bank708_709_wck_c   => C2_LPDDR5X_bank708_709_wck_c,
      C2_LPDDR5X_bank708_709_dmi     => C2_LPDDR5X_bank708_709_dmi,
      C2_LPDDR5X_bank708_709_reset_n => C2_LPDDR5X_bank708_709_reset_n,
      C2_LPDDR5X_bank708_709_rdqs_t  => C2_LPDDR5X_bank708_709_rdqs_t,
      C2_LPDDR5X_bank708_709_rdqs_c  => C2_LPDDR5X_bank708_709_rdqs_c,
      C2_LPDDR5X_bank708_709_ca      => C2_LPDDR5X_bank708_709_ca,
      C2_LPDDR5X_bank708_709_ck_t    => C2_LPDDR5X_bank708_709_ck_t,
      C2_LPDDR5X_bank708_709_ck_c    => C2_LPDDR5X_bank708_709_ck_c,
      C2_LPDDR5X_bank708_709_cs      => C2_LPDDR5X_bank708_709_cs,
      C3_LPDDR5X_bank710_711_dq      => C3_LPDDR5X_bank710_711_dq,
      C3_LPDDR5X_bank710_711_rdqs_t  => C3_LPDDR5X_bank710_711_rdqs_t,
      C3_LPDDR5X_bank710_711_rdqs_c  => C3_LPDDR5X_bank710_711_rdqs_c,
      C3_LPDDR5X_bank710_711_ca      => C3_LPDDR5X_bank710_711_ca,
      C3_LPDDR5X_bank710_711_wck_t   => C3_LPDDR5X_bank710_711_wck_t,
      C3_LPDDR5X_bank710_711_wck_c   => C3_LPDDR5X_bank710_711_wck_c,
      C3_LPDDR5X_bank710_711_dmi     => C3_LPDDR5X_bank710_711_dmi,
      C3_LPDDR5X_bank710_711_cs      => C3_LPDDR5X_bank710_711_cs,
      C3_LPDDR5X_bank710_711_reset_n => C3_LPDDR5X_bank710_711_reset_n,
      C3_LPDDR5X_bank710_711_ck_t    => C3_LPDDR5X_bank710_711_ck_t,
      C3_LPDDR5X_bank710_711_ck_c    => C3_LPDDR5X_bank710_711_ck_c,
      C3_C4_LPDDR5X_sys_clk_clk_p    => C3_C4_LPDDR5X_sys_clk_clk_p,
      C3_C4_LPDDR5X_sys_clk_clk_n    => C3_C4_LPDDR5X_sys_clk_clk_n,
      C1_LPDDR5X_bank703_704_ca      => C1_LPDDR5X_bank703_704_ca,
      C1_LPDDR5X_bank703_704_ck_t    => C1_LPDDR5X_bank703_704_ck_t,
      C1_LPDDR5X_bank703_704_ck_c    => C1_LPDDR5X_bank703_704_ck_c,
      C1_LPDDR5X_bank703_704_cs      => C1_LPDDR5X_bank703_704_cs,
      C1_LPDDR5X_bank703_704_dmi     => C1_LPDDR5X_bank703_704_dmi,
      C1_LPDDR5X_bank703_704_dq      => C1_LPDDR5X_bank703_704_dq,
      C1_LPDDR5X_bank703_704_rdqs_t  => C1_LPDDR5X_bank703_704_rdqs_t,
      C1_LPDDR5X_bank703_704_rdqs_c  => C1_LPDDR5X_bank703_704_rdqs_c,
      C1_LPDDR5X_bank703_704_wck_t   => C1_LPDDR5X_bank703_704_wck_t,
      C1_LPDDR5X_bank703_704_wck_c   => C1_LPDDR5X_bank703_704_wck_c,
      C1_LPDDR5X_bank703_704_reset_n => C1_LPDDR5X_bank703_704_reset_n,
      C0_LPDDR5X_bank700_701_ca      => C0_LPDDR5X_bank700_701_ca,
      C0_LPDDR5X_bank700_701_ck_t    => C0_LPDDR5X_bank700_701_ck_t,
      C0_LPDDR5X_bank700_701_ck_c    => C0_LPDDR5X_bank700_701_ck_c,
      C0_LPDDR5X_bank700_701_cs      => C0_LPDDR5X_bank700_701_cs,
      C0_LPDDR5X_bank700_701_dmi     => C0_LPDDR5X_bank700_701_dmi,
      C0_LPDDR5X_bank700_701_dq      => C0_LPDDR5X_bank700_701_dq,
      C0_LPDDR5X_bank700_701_rdqs_t  => C0_LPDDR5X_bank700_701_rdqs_t,
      C0_LPDDR5X_bank700_701_rdqs_c  => C0_LPDDR5X_bank700_701_rdqs_c,
      C0_LPDDR5X_bank700_701_reset_n => C0_LPDDR5X_bank700_701_reset_n,
      C0_LPDDR5X_bank700_701_wck_t   => C0_LPDDR5X_bank700_701_wck_t,
      C0_LPDDR5X_bank700_701_wck_c   => C0_LPDDR5X_bank700_701_wck_c,
      C0_C1_LPDDR5X_sys_clk_clk_p    => C0_C1_LPDDR5X_sys_clk_clk_p,
      C0_C1_LPDDR5X_sys_clk_clk_n    => C0_C1_LPDDR5X_sys_clk_clk_n,
      XVE70_LedOutput                => XVE70_LedOutput
    );
  
  -- input clock for clock generator 1
  CLK_CG1_M2C_obuf : OBUFTDS
  port map (
     O => CLK_CG1_M2C_P,
     OB => CLK_CG1_M2C_N,
     I => '0',
     T => '1'
  );
  
  -- input clock for clock generator 2
  CLK_CG2_M2C_obuf : OBUFTDS
  port map (
     O => CLK_CG2_M2C_P,
     OB => CLK_CG2_M2C_N,
     I => '0',
     T => '1'
  );
  
  I2C_USER_scl_iobuf: component IOBUF
       port map (
        I => I2C_USER_scl_o,
        IO => I2C_USER_SCL,
        O => I2C_USER_scl_i,
        T => I2C_USER_scl_t
      );
  
  I2C_USER_sda_iobuf: component IOBUF
       port map (
        I => I2C_USER_sda_o,
        IO => I2C_USER_SDA,
        O => I2C_USER_sda_i,
        T => I2C_USER_sda_t
      );
  XVE70_LED0_N <= XVE70_LedOutput(0);
  XVE70_LED1_N <= XVE70_LedOutput(1);
  XVE70_LED2_N <= XVE70_LedOutput(2);
  XVE70_LED3_N <= XVE70_LedOutput(3);
  
end rtl;
