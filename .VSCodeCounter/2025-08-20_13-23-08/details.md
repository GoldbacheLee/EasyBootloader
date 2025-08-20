# Details

Date : 2025-08-20 13:23:08

Directory /home/lee/stm32f407_boot

Total : 111 files,  40668 codes, 38505 comments, 11299 blanks, all 90472 lines

[Summary](results.md) / Details / [Diff Summary](diff.md) / [Diff Details](diff-details.md)

## Files
| filename | language | code | comment | blank | total |
| :--- | :--- | ---: | ---: | ---: | ---: |
| [Log/250820.md](/Log/250820.md) | Markdown | 55 | 0 | 17 | 72 |
| [Makefile](/Makefile) | Makefile | 120 | 14 | 30 | 164 |
| [README.md](/README.md) | Markdown | 6 | 0 | 3 | 9 |
| [boot/boot.c](/boot/boot.c) | C | 0 | 0 | 1 | 1 |
| [boot/lowlevel.c](/boot/lowlevel.c) | C | 8 | 0 | 4 | 12 |
| [boot/main.c](/boot/main.c) | C | 11 | 0 | 5 | 16 |
| [boot/main.h](/boot/main.h) | C | 28 | 0 | 12 | 40 |
| [boot/override/\_printf.c](/boot/override/_printf.c) | C | 33 | 0 | 7 | 40 |
| [boot/override/\_printf\_.c](/boot/override/_printf_.c) | C | 648 | 150 | 117 | 915 |
| [boot/override/\_printf\_.h](/boot/override/_printf_.h) | C | 18 | 79 | 21 | 118 |
| [boot/override/\_putchar.c](/boot/override/_putchar.c) | C | 4 | 0 | 4 | 8 |
| [component/crc/crc32.c](/component/crc/crc32.c) | C | 32 | 2 | 13 | 47 |
| [component/crc/crc32.h](/component/crc/crc32.h) | C | 6 | 0 | 7 | 13 |
| [component/easylogger/inc/elog.h](/component/easylogger/inc/elog.h) | C | 214 | 47 | 36 | 297 |
| [component/easylogger/inc/elog\_cfg.h](/component/easylogger/inc/elog_cfg.h) | C | 28 | 55 | 3 | 86 |
| [component/easylogger/port/elog\_port.c](/component/easylogger/port/elog_port.c) | C | 70 | 0 | 19 | 89 |
| [component/easylogger/src/elog.c](/component/easylogger/src/elog.c) | C | 559 | 276 | 102 | 937 |
| [component/easylogger/src/elog\_utils.c](/component/easylogger/src/elog_utils.c) | C | 36 | 56 | 12 | 104 |
| [component/ringbuffer/ringbuffer8.c](/component/ringbuffer/ringbuffer8.c) | C | 69 | 0 | 25 | 94 |
| [component/ringbuffer/ringbuffer8.h](/component/ringbuffer/ringbuffer8.h) | C | 14 | 0 | 9 | 23 |
| [platform/cmsis/core/arm\_common\_tables.h](/platform/cmsis/core/arm_common_tables.h) | C | 82 | 44 | 11 | 137 |
| [platform/cmsis/core/arm\_const\_structs.h](/platform/cmsis/core/arm_const_structs.h) | C | 32 | 41 | 7 | 80 |
| [platform/cmsis/core/arm\_math.h](/platform/cmsis/core/arm_math.h) | C | 2,935 | 3,403 | 1,219 | 7,557 |
| [platform/cmsis/core/core\_cm4.h](/platform/cmsis/core/core_cm4.h) | C | 1,033 | 416 | 410 | 1,859 |
| [platform/cmsis/core/core\_cmFunc.h](/platform/cmsis/core/core_cmFunc.h) | C | 241 | 303 | 121 | 665 |
| [platform/cmsis/core/core\_cmInstr.h](/platform/cmsis/core/core_cmInstr.h) | C | 288 | 473 | 156 | 917 |
| [platform/cmsis/core/core\_cmSimd.h](/platform/cmsis/core/core_cmSimd.h) | C | 495 | 50 | 153 | 698 |
| [platform/cmsis/device/stm32f4xx.h](/platform/cmsis/device/stm32f4xx.h) | C | 9,451 | 1,255 | 1,361 | 12,067 |
| [platform/cmsis/device/stm32f4xx\_conf.h](/platform/cmsis/device/stm32f4xx_conf.h) | C | 102 | 40 | 23 | 165 |
| [platform/cmsis/device/system\_stm32f4xx.c](/platform/cmsis/device/system_stm32f4xx.c) | C | 496 | 748 | 144 | 1,388 |
| [platform/cmsis/device/system\_stm32f4xx.h](/platform/cmsis/device/system_stm32f4xx.h) | C | 12 | 64 | 22 | 98 |
| [platform/driver/inc/misc.h](/platform/driver/inc/misc.h) | C | 49 | 87 | 35 | 171 |
| [platform/driver/inc/stm32f4xx\_adc.h](/platform/driver/inc/stm32f4xx_adc.h) | C | 344 | 222 | 83 | 649 |
| [platform/driver/inc/stm32f4xx\_can.h](/platform/driver/inc/stm32f4xx_can.h) | C | 264 | 273 | 113 | 650 |
| [platform/driver/inc/stm32f4xx\_cec.h](/platform/driver/inc/stm32f4xx_cec.h) | C | 133 | 118 | 43 | 294 |
| [platform/driver/inc/stm32f4xx\_crc.h](/platform/driver/inc/stm32f4xx_crc.h) | C | 16 | 44 | 16 | 76 |
| [platform/driver/inc/stm32f4xx\_cryp.h](/platform/driver/inc/stm32f4xx_cryp.h) | C | 186 | 137 | 54 | 377 |
| [platform/driver/inc/stm32f4xx\_dac.h](/platform/driver/inc/stm32f4xx_dac.h) | C | 129 | 118 | 50 | 297 |
| [platform/driver/inc/stm32f4xx\_dbgmcu.h](/platform/driver/inc/stm32f4xx_dbgmcu.h) | C | 43 | 43 | 16 | 102 |
| [platform/driver/inc/stm32f4xx\_dcmi.h](/platform/driver/inc/stm32f4xx_dcmi.h) | C | 121 | 135 | 49 | 305 |
| [platform/driver/inc/stm32f4xx\_dfsdm.h](/platform/driver/inc/stm32f4xx_dfsdm.h) | C | 465 | 249 | 108 | 822 |
| [platform/driver/inc/stm32f4xx\_dma.h](/platform/driver/inc/stm32f4xx_dma.h) | C | 304 | 198 | 100 | 602 |
| [platform/driver/inc/stm32f4xx\_dma2d.h](/platform/driver/inc/stm32f4xx_dma2d.h) | C | 167 | 178 | 123 | 468 |
| [platform/driver/inc/stm32f4xx\_dsi.h](/platform/driver/inc/stm32f4xx_dsi.h) | C | 425 | 427 | 152 | 1,004 |
| [platform/driver/inc/stm32f4xx\_exti.h](/platform/driver/inc/stm32f4xx_exti.h) | C | 77 | 66 | 35 | 178 |
| [platform/driver/inc/stm32f4xx\_flash.h](/platform/driver/inc/stm32f4xx_flash.h) | C | 272 | 167 | 51 | 490 |
| [platform/driver/inc/stm32f4xx\_flash\_ramfunc.h](/platform/driver/inc/stm32f4xx_flash_ramfunc.h) | C | 19 | 59 | 18 | 96 |
| [platform/driver/inc/stm32f4xx\_fmc.h](/platform/driver/inc/stm32f4xx_fmc.h) | C | 361 | 546 | 229 | 1,136 |
| [platform/driver/inc/stm32f4xx\_fmpi2c.h](/platform/driver/inc/stm32f4xx_fmpi2c.h) | C | 199 | 170 | 98 | 467 |
| [platform/driver/inc/stm32f4xx\_fsmc.h](/platform/driver/inc/stm32f4xx_fsmc.h) | C | 210 | 347 | 111 | 668 |
| [platform/driver/inc/stm32f4xx\_gpio.h](/platform/driver/inc/stm32f4xx_gpio.h) | C | 369 | 147 | 69 | 585 |
| [platform/driver/inc/stm32f4xx\_hash.h](/platform/driver/inc/stm32f4xx_hash.h) | C | 95 | 111 | 44 | 250 |
| [platform/driver/inc/stm32f4xx\_i2c.h](/platform/driver/inc/stm32f4xx_i2c.h) | C | 208 | 403 | 91 | 702 |
| [platform/driver/inc/stm32f4xx\_iwdg.h](/platform/driver/inc/stm32f4xx_iwdg.h) | C | 38 | 65 | 21 | 124 |
| [platform/driver/inc/stm32f4xx\_lptim.h](/platform/driver/inc/stm32f4xx_lptim.h) | C | 182 | 157 | 40 | 379 |
| [platform/driver/inc/stm32f4xx\_ltdc.h](/platform/driver/inc/stm32f4xx_ltdc.h) | C | 191 | 204 | 101 | 496 |
| [platform/driver/inc/stm32f4xx\_pwr.h](/platform/driver/inc/stm32f4xx_pwr.h) | C | 99 | 96 | 43 | 238 |
| [platform/driver/inc/stm32f4xx\_qspi.h](/platform/driver/inc/stm32f4xx_qspi.h) | C | 193 | 227 | 66 | 486 |
| [platform/driver/inc/stm32f4xx\_rcc.h](/platform/driver/inc/stm32f4xx_rcc.h) | C | 642 | 300 | 117 | 1,059 |
| [platform/driver/inc/stm32f4xx\_rng.h](/platform/driver/inc/stm32f4xx_rng.h) | C | 32 | 60 | 22 | 114 |
| [platform/driver/inc/stm32f4xx\_rtc.h](/platform/driver/inc/stm32f4xx_rtc.h) | C | 392 | 364 | 125 | 881 |
| [platform/driver/inc/stm32f4xx\_sai.h](/platform/driver/inc/stm32f4xx_sai.h) | C | 260 | 269 | 113 | 642 |
| [platform/driver/inc/stm32f4xx\_sdio.h](/platform/driver/inc/stm32f4xx_sdio.h) | C | 256 | 187 | 86 | 529 |
| [platform/driver/inc/stm32f4xx\_spdifrx.h](/platform/driver/inc/stm32f4xx_spdifrx.h) | C | 108 | 112 | 35 | 255 |
| [platform/driver/inc/stm32f4xx\_spi.h](/platform/driver/inc/stm32f4xx_spi.h) | C | 238 | 206 | 98 | 542 |
| [platform/driver/inc/stm32f4xx\_syscfg.h](/platform/driver/inc/stm32f4xx_syscfg.h) | C | 173 | 128 | 42 | 343 |
| [platform/driver/inc/stm32f4xx\_tim.h](/platform/driver/inc/stm32f4xx_tim.h) | C | 593 | 390 | 160 | 1,143 |
| [platform/driver/inc/stm32f4xx\_usart.h](/platform/driver/inc/stm32f4xx_usart.h) | C | 173 | 175 | 78 | 426 |
| [platform/driver/inc/stm32f4xx\_wwdg.h](/platform/driver/inc/stm32f4xx_wwdg.h) | C | 28 | 54 | 22 | 104 |
| [platform/driver/src/misc.c](/platform/driver/src/misc.c) | C | 62 | 155 | 25 | 242 |
| [platform/driver/src/stm32f4xx\_adc.c](/platform/driver/src/stm32f4xx_adc.c) | C | 518 | 1,056 | 164 | 1,738 |
| [platform/driver/src/stm32f4xx\_can.c](/platform/driver/src/stm32f4xx_can.c) | C | 829 | 868 | 152 | 1,849 |
| [platform/driver/src/stm32f4xx\_cec.c](/platform/driver/src/stm32f4xx_cec.c) | C | 144 | 408 | 49 | 601 |
| [platform/driver/src/stm32f4xx\_crc.c](/platform/driver/src/stm32f4xx_crc.c) | C | 31 | 77 | 18 | 126 |
| [platform/driver/src/stm32f4xx\_cryp.c](/platform/driver/src/stm32f4xx_cryp.c) | C | 280 | 571 | 76 | 927 |
| [platform/driver/src/stm32f4xx\_cryp\_aes.c](/platform/driver/src/stm32f4xx_cryp_aes.c) | C | 1,104 | 400 | 196 | 1,700 |
| [platform/driver/src/stm32f4xx\_cryp\_des.c](/platform/driver/src/stm32f4xx_cryp_des.c) | C | 136 | 129 | 40 | 305 |
| [platform/driver/src/stm32f4xx\_cryp\_tdes.c](/platform/driver/src/stm32f4xx_cryp_tdes.c) | C | 152 | 130 | 39 | 321 |
| [platform/driver/src/stm32f4xx\_dac.c](/platform/driver/src/stm32f4xx_dac.c) | C | 203 | 440 | 64 | 707 |
| [platform/driver/src/stm32f4xx\_dbgmcu.c](/platform/driver/src/stm32f4xx_dbgmcu.c) | C | 49 | 106 | 18 | 173 |
| [platform/driver/src/stm32f4xx\_dcmi.c](/platform/driver/src/stm32f4xx_dcmi.c) | C | 178 | 303 | 50 | 531 |
| [platform/driver/src/stm32f4xx\_dfsdm.c](/platform/driver/src/stm32f4xx_dfsdm.c) | C | 823 | 1,132 | 247 | 2,202 |
| [platform/driver/src/stm32f4xx\_dma.c](/platform/driver/src/stm32f4xx_dma.c) | C | 424 | 759 | 111 | 1,294 |
| [platform/driver/src/stm32f4xx\_dma2d.c](/platform/driver/src/stm32f4xx_dma2d.c) | C | 303 | 361 | 113 | 777 |
| [platform/driver/src/stm32f4xx\_dsi.c](/platform/driver/src/stm32f4xx_dsi.c) | C | 815 | 740 | 208 | 1,763 |
| [platform/driver/src/stm32f4xx\_exti.c](/platform/driver/src/stm32f4xx_exti.c) | C | 94 | 172 | 39 | 305 |
| [platform/driver/src/stm32f4xx\_flash.c](/platform/driver/src/stm32f4xx_flash.c) | C | 531 | 930 | 151 | 1,612 |
| [platform/driver/src/stm32f4xx\_flash\_ramfunc.c](/platform/driver/src/stm32f4xx_flash_ramfunc.c) | C | 23 | 114 | 14 | 151 |
| [platform/driver/src/stm32f4xx\_fmpi2c.c](/platform/driver/src/stm32f4xx_fmpi2c.c) | C | 511 | 879 | 157 | 1,547 |
| [platform/driver/src/stm32f4xx\_fsmc.c](/platform/driver/src/stm32f4xx_fsmc.c) | C | 540 | 453 | 100 | 1,093 |
| [platform/driver/src/stm32f4xx\_gpio.c](/platform/driver/src/stm32f4xx_gpio.c) | C | 201 | 348 | 55 | 604 |
| [platform/driver/src/stm32f4xx\_hash.c](/platform/driver/src/stm32f4xx_hash.c) | C | 173 | 489 | 57 | 719 |
| [platform/driver/src/stm32f4xx\_hash\_md5.c](/platform/driver/src/stm32f4xx_hash_md5.c) | C | 147 | 125 | 41 | 313 |
| [platform/driver/src/stm32f4xx\_hash\_sha1.c](/platform/driver/src/stm32f4xx_hash_sha1.c) | C | 151 | 125 | 40 | 316 |
| [platform/driver/src/stm32f4xx\_i2c.c](/platform/driver/src/stm32f4xx_i2c.c) | C | 500 | 860 | 104 | 1,464 |
| [platform/driver/src/stm32f4xx\_iwdg.c](/platform/driver/src/stm32f4xx_iwdg.c) | C | 40 | 195 | 24 | 259 |
| [platform/driver/src/stm32f4xx\_lptim.c](/platform/driver/src/stm32f4xx_lptim.c) | C | 262 | 576 | 106 | 944 |
| [platform/driver/src/stm32f4xx\_ltdc.c](/platform/driver/src/stm32f4xx_ltdc.c) | C | 480 | 462 | 161 | 1,103 |
| [platform/driver/src/stm32f4xx\_pwr.c](/platform/driver/src/stm32f4xx_pwr.c) | C | 274 | 671 | 101 | 1,046 |
| [platform/driver/src/stm32f4xx\_qspi.c](/platform/driver/src/stm32f4xx_qspi.c) | C | 343 | 476 | 85 | 904 |
| [platform/driver/src/stm32f4xx\_rcc.c](/platform/driver/src/stm32f4xx_rcc.c) | C | 976 | 1,931 | 278 | 3,185 |
| [platform/driver/src/stm32f4xx\_rng.c](/platform/driver/src/stm32f4xx_rng.c) | C | 81 | 286 | 32 | 399 |
| [platform/driver/src/stm32f4xx\_rtc.c](/platform/driver/src/stm32f4xx_rtc.c) | C | 1,054 | 1,409 | 295 | 2,758 |
| [platform/driver/src/stm32f4xx\_sai.c](/platform/driver/src/stm32f4xx_sai.c) | C | 340 | 737 | 83 | 1,160 |
| [platform/driver/src/stm32f4xx\_sdio.c](/platform/driver/src/stm32f4xx_sdio.c) | C | 244 | 655 | 105 | 1,004 |
| [platform/driver/src/stm32f4xx\_spdifrx.c](/platform/driver/src/stm32f4xx_spdifrx.c) | C | 167 | 275 | 45 | 487 |
| [platform/driver/src/stm32f4xx\_spi.c](/platform/driver/src/stm32f4xx_spi.c) | C | 421 | 796 | 109 | 1,326 |
| [platform/driver/src/stm32f4xx\_syscfg.c](/platform/driver/src/stm32f4xx_syscfg.c) | C | 204 | 243 | 67 | 514 |
| [platform/driver/src/stm32f4xx\_tim.c](/platform/driver/src/stm32f4xx_tim.c) | C | 1,171 | 1,785 | 402 | 3,358 |
| [platform/driver/src/stm32f4xx\_usart.c](/platform/driver/src/stm32f4xx_usart.c) | C | 448 | 914 | 117 | 1,479 |
| [platform/driver/src/stm32f4xx\_wwdg.c](/platform/driver/src/stm32f4xx_wwdg.c) | C | 61 | 209 | 30 | 300 |

[Summary](results.md) / Details / [Diff Summary](diff.md) / [Diff Details](diff-details.md)