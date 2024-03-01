;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Mon Oct 17 12:16:35 2022
;--------------------------------------------------------
	.module Q2_adc
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _timer0_ISR
	.globl _it_SPI
	.globl _main
	.globl _EP6INT
	.globl _EP5INT
	.globl _EP4INT
	.globl _EP3INT
	.globl _EP2INT
	.globl _EP1INT
	.globl _EP0INT
	.globl _CF
	.globl _CR
	.globl _CCF4
	.globl _CCF3
	.globl _CCF2
	.globl _CCF1
	.globl _CCF0
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _P4_1
	.globl _P4_0
	.globl _PPCL
	.globl _PT2L
	.globl _PSL
	.globl _PT1L
	.globl _PX1L
	.globl _PT0L
	.globl _PX0L
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _EC
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _FE
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _UEPINT
	.globl _LEDCON
	.globl _B
	.globl _CCAP4H
	.globl _CCAP4L
	.globl _CCAP4
	.globl _CCAP3H
	.globl _CCAP3L
	.globl _CCAP3
	.globl _CCAP2H
	.globl _CCAP2L
	.globl _CCAP2
	.globl _CCAP1H
	.globl _CCAP1L
	.globl _CCAP1
	.globl _CCAP0H
	.globl _CCAP0L
	.globl _CCAP0
	.globl _CH
	.globl _CL
	.globl _PCA
	.globl _UBYCTHX
	.globl _UBYCTLX
	.globl _UBYCTX
	.globl _ACC
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CMOD
	.globl _CCON
	.globl _UEPRST
	.globl _UEPCONX
	.globl _EECON
	.globl _FCON
	.globl _PSW
	.globl _UEPDATX
	.globl _UEPSTAX
	.globl _TH2
	.globl _TL2
	.globl _TMR2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _RCAP2
	.globl _T2MOD
	.globl _T2CON
	.globl _UEPNUM
	.globl _USBADDR
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _UEPIEN
	.globl _P4
	.globl _USBIEN
	.globl _USBINT
	.globl _USBCON
	.globl _UFNUMH
	.globl _UFNUML
	.globl _UFNUM
	.globl _SADEN
	.globl _IPL0
	.globl _IPH0
	.globl _IPH1
	.globl _IPL1
	.globl _IEN1
	.globl _P3
	.globl _CKCON1
	.globl _SADDR
	.globl _IEN0
	.globl _IE
	.globl _WDTPRG
	.globl _WDTRST
	.globl _PLLDIV
	.globl _PLLCON
	.globl _AUXR1
	.globl _P2
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BDRCON
	.globl _BRL
	.globl _SBUF
	.globl _SCON
	.globl _SSADR
	.globl _SSDAT
	.globl _SSCS
	.globl _SSCON
	.globl _P1
	.globl _CKCON0
	.globl _AUXR
	.globl _TH1
	.globl _TL1
	.globl _TMR1
	.globl _TH0
	.globl _TL0
	.globl _TMR0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _take_samples
	.globl _transmit_completed
	.globl _LCD_StringWrite_PARM_2
	.globl _voltage
	.globl _i
	.globl _data_save_low
	.globl _data_save_high
	.globl _serial_data
	.globl _avgVal
	.globl _adcVal
	.globl _SPI_Init
	.globl _Timer_Init
	.globl _LCD_Init
	.globl _LCD_CmdWrite
	.globl _LCD_DataWrite
	.globl _LCD_StringWrite
	.globl _LCD_Ready
	.globl _sdelay
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$TMR0$0$0 == 0x8c8a
_TMR0	=	0x8c8a
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TMR1$0$0 == 0x8d8b
_TMR1	=	0x8d8b
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$AUXR$0$0 == 0x008e
_AUXR	=	0x008e
G$CKCON0$0$0 == 0x008f
_CKCON0	=	0x008f
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$SSCON$0$0 == 0x0093
_SSCON	=	0x0093
G$SSCS$0$0 == 0x0094
_SSCS	=	0x0094
G$SSDAT$0$0 == 0x0095
_SSDAT	=	0x0095
G$SSADR$0$0 == 0x0096
_SSADR	=	0x0096
G$SCON$0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0$0 == 0x0099
_SBUF	=	0x0099
G$BRL$0$0 == 0x009a
_BRL	=	0x009a
G$BDRCON$0$0 == 0x009b
_BDRCON	=	0x009b
G$KBLS$0$0 == 0x009c
_KBLS	=	0x009c
G$KBE$0$0 == 0x009d
_KBE	=	0x009d
G$KBF$0$0 == 0x009e
_KBF	=	0x009e
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$AUXR1$0$0 == 0x00a2
_AUXR1	=	0x00a2
G$PLLCON$0$0 == 0x00a3
_PLLCON	=	0x00a3
G$PLLDIV$0$0 == 0x00a4
_PLLDIV	=	0x00a4
G$WDTRST$0$0 == 0x00a6
_WDTRST	=	0x00a6
G$WDTPRG$0$0 == 0x00a7
_WDTPRG	=	0x00a7
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
G$SADDR$0$0 == 0x00a9
_SADDR	=	0x00a9
G$CKCON1$0$0 == 0x00af
_CKCON1	=	0x00af
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$IEN1$0$0 == 0x00b1
_IEN1	=	0x00b1
G$IPL1$0$0 == 0x00b2
_IPL1	=	0x00b2
G$IPH1$0$0 == 0x00b3
_IPH1	=	0x00b3
G$IPH0$0$0 == 0x00b7
_IPH0	=	0x00b7
G$IPL0$0$0 == 0x00b8
_IPL0	=	0x00b8
G$SADEN$0$0 == 0x00b9
_SADEN	=	0x00b9
G$UFNUM$0$0 == 0xbbba
_UFNUM	=	0xbbba
G$UFNUML$0$0 == 0x00ba
_UFNUML	=	0x00ba
G$UFNUMH$0$0 == 0x00bb
_UFNUMH	=	0x00bb
G$USBCON$0$0 == 0x00bc
_USBCON	=	0x00bc
G$USBINT$0$0 == 0x00bd
_USBINT	=	0x00bd
G$USBIEN$0$0 == 0x00be
_USBIEN	=	0x00be
G$P4$0$0 == 0x00c0
_P4	=	0x00c0
G$UEPIEN$0$0 == 0x00c2
_UEPIEN	=	0x00c2
G$SPCON$0$0 == 0x00c3
_SPCON	=	0x00c3
G$SPSTA$0$0 == 0x00c4
_SPSTA	=	0x00c4
G$SPDAT$0$0 == 0x00c5
_SPDAT	=	0x00c5
G$USBADDR$0$0 == 0x00c6
_USBADDR	=	0x00c6
G$UEPNUM$0$0 == 0x00c7
_UEPNUM	=	0x00c7
G$T2CON$0$0 == 0x00c8
_T2CON	=	0x00c8
G$T2MOD$0$0 == 0x00c9
_T2MOD	=	0x00c9
G$RCAP2$0$0 == 0xcbca
_RCAP2	=	0xcbca
G$RCAP2L$0$0 == 0x00ca
_RCAP2L	=	0x00ca
G$RCAP2H$0$0 == 0x00cb
_RCAP2H	=	0x00cb
G$TMR2$0$0 == 0xcdcc
_TMR2	=	0xcdcc
G$TL2$0$0 == 0x00cc
_TL2	=	0x00cc
G$TH2$0$0 == 0x00cd
_TH2	=	0x00cd
G$UEPSTAX$0$0 == 0x00ce
_UEPSTAX	=	0x00ce
G$UEPDATX$0$0 == 0x00cf
_UEPDATX	=	0x00cf
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$FCON$0$0 == 0x00d1
_FCON	=	0x00d1
G$EECON$0$0 == 0x00d2
_EECON	=	0x00d2
G$UEPCONX$0$0 == 0x00d4
_UEPCONX	=	0x00d4
G$UEPRST$0$0 == 0x00d5
_UEPRST	=	0x00d5
G$CCON$0$0 == 0x00d8
_CCON	=	0x00d8
G$CMOD$0$0 == 0x00d9
_CMOD	=	0x00d9
G$CCAPM0$0$0 == 0x00da
_CCAPM0	=	0x00da
G$CCAPM1$0$0 == 0x00db
_CCAPM1	=	0x00db
G$CCAPM2$0$0 == 0x00dc
_CCAPM2	=	0x00dc
G$CCAPM3$0$0 == 0x00dd
_CCAPM3	=	0x00dd
G$CCAPM4$0$0 == 0x00de
_CCAPM4	=	0x00de
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$UBYCTX$0$0 == 0xe3e2
_UBYCTX	=	0xe3e2
G$UBYCTLX$0$0 == 0x00e2
_UBYCTLX	=	0x00e2
G$UBYCTHX$0$0 == 0x00e3
_UBYCTHX	=	0x00e3
G$PCA$0$0 == 0xf9e9
_PCA	=	0xf9e9
G$CL$0$0 == 0x00e9
_CL	=	0x00e9
G$CH$0$0 == 0x00f9
_CH	=	0x00f9
G$CCAP0$0$0 == 0xfaea
_CCAP0	=	0xfaea
G$CCAP0L$0$0 == 0x00ea
_CCAP0L	=	0x00ea
G$CCAP0H$0$0 == 0x00fa
_CCAP0H	=	0x00fa
G$CCAP1$0$0 == 0xfbeb
_CCAP1	=	0xfbeb
G$CCAP1L$0$0 == 0x00eb
_CCAP1L	=	0x00eb
G$CCAP1H$0$0 == 0x00fb
_CCAP1H	=	0x00fb
G$CCAP2$0$0 == 0xfcec
_CCAP2	=	0xfcec
G$CCAP2L$0$0 == 0x00ec
_CCAP2L	=	0x00ec
G$CCAP2H$0$0 == 0x00fc
_CCAP2H	=	0x00fc
G$CCAP3$0$0 == 0xfded
_CCAP3	=	0xfded
G$CCAP3L$0$0 == 0x00ed
_CCAP3L	=	0x00ed
G$CCAP3H$0$0 == 0x00fd
_CCAP3H	=	0x00fd
G$CCAP4$0$0 == 0xfeee
_CCAP4	=	0xfeee
G$CCAP4L$0$0 == 0x00ee
_CCAP4L	=	0x00ee
G$CCAP4H$0$0 == 0x00fe
_CCAP4H	=	0x00fe
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$LEDCON$0$0 == 0x00f1
_LEDCON	=	0x00f1
G$UEPINT$0$0 == 0x00f8
_UEPINT	=	0x00f8
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$RI$0$0 == 0x0098
_RI	=	0x0098
G$TI$0$0 == 0x0099
_TI	=	0x0099
G$RB8$0$0 == 0x009a
_RB8	=	0x009a
G$TB8$0$0 == 0x009b
_TB8	=	0x009b
G$REN$0$0 == 0x009c
_REN	=	0x009c
G$SM2$0$0 == 0x009d
_SM2	=	0x009d
G$SM1$0$0 == 0x009e
_SM1	=	0x009e
G$SM0$0$0 == 0x009f
_SM0	=	0x009f
G$FE$0$0 == 0x009f
_FE	=	0x009f
G$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$ES$0$0 == 0x00ac
_ES	=	0x00ac
G$ET2$0$0 == 0x00ad
_ET2	=	0x00ad
G$EC$0$0 == 0x00ae
_EC	=	0x00ae
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0$0 == 0x00b7
_P3_7	=	0x00b7
G$PX0L$0$0 == 0x00b8
_PX0L	=	0x00b8
G$PT0L$0$0 == 0x00b9
_PT0L	=	0x00b9
G$PX1L$0$0 == 0x00ba
_PX1L	=	0x00ba
G$PT1L$0$0 == 0x00bb
_PT1L	=	0x00bb
G$PSL$0$0 == 0x00bc
_PSL	=	0x00bc
G$PT2L$0$0 == 0x00bd
_PT2L	=	0x00bd
G$PPCL$0$0 == 0x00be
_PPCL	=	0x00be
G$P4_0$0$0 == 0x00c0
_P4_0	=	0x00c0
G$P4_1$0$0 == 0x00c1
_P4_1	=	0x00c1
G$CP_RL2$0$0 == 0x00c8
_CP_RL2	=	0x00c8
G$C_T2$0$0 == 0x00c9
_C_T2	=	0x00c9
G$TR2$0$0 == 0x00ca
_TR2	=	0x00ca
G$EXEN2$0$0 == 0x00cb
_EXEN2	=	0x00cb
G$TCLK$0$0 == 0x00cc
_TCLK	=	0x00cc
G$RCLK$0$0 == 0x00cd
_RCLK	=	0x00cd
G$EXF2$0$0 == 0x00ce
_EXF2	=	0x00ce
G$TF2$0$0 == 0x00cf
_TF2	=	0x00cf
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
G$CCF0$0$0 == 0x00d8
_CCF0	=	0x00d8
G$CCF1$0$0 == 0x00d9
_CCF1	=	0x00d9
G$CCF2$0$0 == 0x00da
_CCF2	=	0x00da
G$CCF3$0$0 == 0x00db
_CCF3	=	0x00db
G$CCF4$0$0 == 0x00dc
_CCF4	=	0x00dc
G$CR$0$0 == 0x00de
_CR	=	0x00de
G$CF$0$0 == 0x00df
_CF	=	0x00df
G$EP0INT$0$0 == 0x00f8
_EP0INT	=	0x00f8
G$EP1INT$0$0 == 0x00f9
_EP1INT	=	0x00f9
G$EP2INT$0$0 == 0x00fa
_EP2INT	=	0x00fa
G$EP3INT$0$0 == 0x00fb
_EP3INT	=	0x00fb
G$EP4INT$0$0 == 0x00fc
_EP4INT	=	0x00fc
G$EP5INT$0$0 == 0x00fd
_EP5INT	=	0x00fd
G$EP6INT$0$0 == 0x00fe
_EP6INT	=	0x00fe
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$adcVal$0$0==.
_adcVal::
	.ds 2
G$avgVal$0$0==.
_avgVal::
	.ds 2
G$serial_data$0$0==.
_serial_data::
	.ds 1
G$data_save_high$0$0==.
_data_save_high::
	.ds 1
G$data_save_low$0$0==.
_data_save_low::
	.ds 1
G$i$0$0==.
_i::
	.ds 1
G$voltage$0$0==.
_voltage::
	.ds 4
LQ2_adc.LCD_StringWrite$length$1$36==.
_LCD_StringWrite_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
G$transmit_completed$0$0==.
_transmit_completed::
	.ds 1
G$take_samples$0$0==.
_take_samples::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0_ISR
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_it_SPI
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	C$Q2_adc.c$26$1$42 ==.
;	Q2_adc.c:26: int adcVal=0, avgVal=0; //initVal=0;
	clr	a
	mov	_adcVal,a
	mov	(_adcVal + 1),a
	C$Q2_adc.c$26$1$42 ==.
;	Q2_adc.c:26: unsigned char serial_data;
	mov	_avgVal,a
	mov	(_avgVal + 1),a
	C$Q2_adc.c$30$1$42 ==.
;	Q2_adc.c:30: unsigned char i=0;
;	1-genFromRTrack replaced	mov	_i,#0x00
	mov	_i,a
	C$Q2_adc.c$23$1$42 ==.
;	Q2_adc.c:23: __bit transmit_completed= 0;					// To check if spi data transmit is complete
	clr	_transmit_completed
	C$Q2_adc.c$24$1$42 ==.
;	Q2_adc.c:24: __bit take_samples=0;
	clr	_take_samples
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$Q2_adc.c$40$0$0 ==.
;	Q2_adc.c:40: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$Q2_adc.c$42$1$20 ==.
;	Q2_adc.c:42: P2 = 0x00;								// Make Port 2 output .. for LCD data
	mov	_P2,#0x00
	C$Q2_adc.c$43$1$20 ==.
;	Q2_adc.c:43: P1 &= 0xEF;								// Make P1 Pin4 as output
	anl	_P1,#0xEF
	C$Q2_adc.c$44$1$20 ==.
;	Q2_adc.c:44: P0 &= 0xF8;								// Make Port 0 Pins 0,1,2 output
	anl	_P0,#0xF8
	C$Q2_adc.c$46$1$20 ==.
;	Q2_adc.c:46: SPI_Init();
	lcall	_SPI_Init
	C$Q2_adc.c$47$1$20 ==.
;	Q2_adc.c:47: LCD_Init();
	lcall	_LCD_Init
	C$Q2_adc.c$48$1$20 ==.
;	Q2_adc.c:48: Timer_Init();
	lcall	_Timer_Init
	C$Q2_adc.c$49$1$20 ==.
;	Q2_adc.c:49: LCD_StringWrite("Voltage: xxxxmv", 15);
	mov	_LCD_StringWrite_PARM_2,#0x0F
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_LCD_StringWrite
	C$Q2_adc.c$53$2$21 ==.
;	Q2_adc.c:53: while(take_samples)                     //Take 10 samples at regular intervals using timer and 
00111$:
	jnb	_take_samples,00111$
	C$Q2_adc.c$57$3$22 ==.
;	Q2_adc.c:57: for(i = 0; i < 10; i++)
	mov	_i,#0x00
	clr	_take_samples
00117$:
	C$Q2_adc.c$59$4$23 ==.
;	Q2_adc.c:59: CS_BAR = 0;                 // enable ADC as slave		 
	clr	_P1_4
	C$Q2_adc.c$60$4$23 ==.
;	Q2_adc.c:60: SPDAT= 0x01;		    // Write start bit to start ADC(Timing Diagram) 
	mov	_SPDAT,#0x01
	C$Q2_adc.c$61$4$23 ==.
;	Q2_adc.c:61: while(!transmit_completed);	// wait end of transmition;
00101$:
	C$Q2_adc.c$62$4$23 ==.
;	Q2_adc.c:62: transmit_completed = 0;    	// clear software transfert flag 
	jbc	_transmit_completed,00152$
	sjmp	00101$
00152$:
	C$Q2_adc.c$63$4$23 ==.
;	Q2_adc.c:63: SPDAT= 0x80;			// 80H written to start ADC CH0 single ended sampling(refer D0D1D2config diag.)
	mov	_SPDAT,#0x80
	C$Q2_adc.c$64$4$23 ==.
;	Q2_adc.c:64: while(!transmit_completed);	// wait end of transmition 
00104$:
	jnb	_transmit_completed,00104$
	C$Q2_adc.c$65$4$23 ==.
;	Q2_adc.c:65: data_save_high = serial_data & 0x03 ;  //
	mov	a,#0x03
	anl	a,_serial_data
	mov	_data_save_high,a
	C$Q2_adc.c$66$4$23 ==.
;	Q2_adc.c:66: transmit_completed = 0;    	// clear software transfer flag 
	clr	_transmit_completed
	C$Q2_adc.c$68$4$23 ==.
;	Q2_adc.c:68: SPDAT= 0x00;			// 
	mov	_SPDAT,#0x00
	C$Q2_adc.c$69$4$23 ==.
;	Q2_adc.c:69: while(!transmit_completed);	// wait end of transmition 
00107$:
	jnb	_transmit_completed,00107$
	C$Q2_adc.c$70$4$23 ==.
;	Q2_adc.c:70: data_save_low = serial_data;
	mov	_data_save_low,_serial_data
	C$Q2_adc.c$71$4$23 ==.
;	Q2_adc.c:71: transmit_completed = 0;    	// clear software transfer flag 
	clr	_transmit_completed
	C$Q2_adc.c$72$4$23 ==.
;	Q2_adc.c:72: CS_BAR = 1;                	// disable ADC as slave
	setb	_P1_4
	C$Q2_adc.c$74$4$23 ==.
;	Q2_adc.c:74: adcVal = (data_save_high <<8) + (data_save_low);
	mov	r7,_data_save_high
	mov	r6,#0x00
	mov	r4,_data_save_low
	mov	r5,#0x00
	mov	a,r4
	add	a,r6
	mov	_adcVal,a
	mov	a,r5
	addc	a,r7
	mov	(_adcVal + 1),a
	C$Q2_adc.c$75$4$23 ==.
;	Q2_adc.c:75: avgVal += adcVal;		// accumulate the readings in avgVal
	mov	a,_adcVal
	add	a,_avgVal
	mov	_avgVal,a
	mov	a,(_adcVal + 1)
	addc	a,(_avgVal + 1)
	mov	(_avgVal + 1),a
	C$Q2_adc.c$57$3$22 ==.
;	Q2_adc.c:57: for(i = 0; i < 10; i++)
	inc	_i
	mov	a,#0x100 - 0x0A
	add	a,_i
	jnc	00117$
	C$Q2_adc.c$78$1$20 ==.
;	Q2_adc.c:78: avgVal = avgVal/10.0;			// the average reading
	mov	dpl,_avgVal
	mov	dph,(_avgVal + 1)
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x20
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2sint
	C$Q2_adc.c$79$1$20 ==.
;	Q2_adc.c:79: avgVal = avgVal*(3300.0/1024.0); // in mV
	mov	_avgVal,dpl
	mov	(_avgVal + 1),dph
	mov	dph,(_avgVal + 1)
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x4000
	mov	b,#0x4E
	mov	a,#0x40
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2sint
	mov	_avgVal,dpl
	mov	(_avgVal + 1),dph
	C$Q2_adc.c$80$3$22 ==.
;	Q2_adc.c:80: LCD_CmdWrite(0x89);		 //
	mov	dpl,#0x89
	lcall	_LCD_CmdWrite
	C$Q2_adc.c$81$3$22 ==.
;	Q2_adc.c:81: voltage[3] = avgVal%10 + 0x30; // add 0x30 to convert the corresponding number to ASCII
	mov	__modsint_PARM_2,#0x0A
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_avgVal
	mov	dph,(_avgVal + 1)
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	(_voltage + 0x0003),a
	C$Q2_adc.c$82$1$20 ==.
;	Q2_adc.c:82: avgVal = avgVal/10;
	mov	__divsint_PARM_2,#0x0A
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,_avgVal
	mov	dph,(_avgVal + 1)
	lcall	__divsint
	C$Q2_adc.c$83$3$22 ==.
;	Q2_adc.c:83: voltage[2] = avgVal%10 + 0x30;
	mov	_avgVal,dpl
	mov	(_avgVal + 1),dph
	mov	__modsint_PARM_2,#0x0A
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	(_voltage + 0x0002),a
	C$Q2_adc.c$84$1$20 ==.
;	Q2_adc.c:84: avgVal = avgVal/10;
	mov	__divsint_PARM_2,#0x0A
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,_avgVal
	mov	dph,(_avgVal + 1)
	lcall	__divsint
	C$Q2_adc.c$85$3$22 ==.
;	Q2_adc.c:85: voltage[1] = avgVal%10 + 0x30;
	mov	_avgVal,dpl
	mov	(_avgVal + 1),dph
	mov	__modsint_PARM_2,#0x0A
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	(_voltage + 0x0001),a
	C$Q2_adc.c$86$1$20 ==.
;	Q2_adc.c:86: avgVal = avgVal/10;
	mov	__divsint_PARM_2,#0x0A
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,_avgVal
	mov	dph,(_avgVal + 1)
	lcall	__divsint
	C$Q2_adc.c$87$1$20 ==.
;	Q2_adc.c:87: voltage[0] = avgVal%10 + 0x30;
	mov	_avgVal,dpl
	mov	(_avgVal + 1),dph
	mov	__modsint_PARM_2,#0x0A
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	_voltage,a
	C$Q2_adc.c$88$3$22 ==.
;	Q2_adc.c:88: LCD_StringWrite(voltage, 4);
	mov	_LCD_StringWrite_PARM_2,#0x04
	mov	dptr,#_voltage
	mov	b,#0x40
	lcall	_LCD_StringWrite
	ljmp	00111$
	C$Q2_adc.c$92$1$20 ==.
	XG$main$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'it_SPI'
;------------------------------------------------------------
	G$it_SPI$0$0 ==.
	C$Q2_adc.c$99$1$20 ==.
;	Q2_adc.c:99: void it_SPI(void) __interrupt 9 /* interrupt address is 0x004B */
;	-----------------------------------------
;	 function it_SPI
;	-----------------------------------------
_it_SPI:
	push	ar7
	push	psw
	mov	psw,#0x00
	C$Q2_adc.c$101$1$25 ==.
;	Q2_adc.c:101: switch	( SPSTA )         /* read and clear spi status register */
	mov	r7,_SPSTA
	cjne	r7,#0x10,00116$
	sjmp	00105$
00116$:
	cjne	r7,#0x40,00117$
	sjmp	00105$
00117$:
	cjne	r7,#0x80,00105$
	C$Q2_adc.c$104$2$26 ==.
;	Q2_adc.c:104: serial_data=SPDAT;   /* read receive data */
	mov	_serial_data,_SPDAT
	C$Q2_adc.c$105$2$26 ==.
;	Q2_adc.c:105: transmit_completed=1;/* set software flag */
	setb	_transmit_completed
	C$Q2_adc.c$115$1$25 ==.
;	Q2_adc.c:115: }
00105$:
	pop	psw
	pop	ar7
	C$Q2_adc.c$116$1$25 ==.
	XG$it_SPI$0$0 ==.
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
	G$timer0_ISR$0$0 ==.
	C$Q2_adc.c$118$1$25 ==.
;	Q2_adc.c:118: void timer0_ISR (void) __interrupt 1
;	-----------------------------------------
;	 function timer0_ISR
;	-----------------------------------------
_timer0_ISR:
	C$Q2_adc.c$120$1$28 ==.
;	Q2_adc.c:120: TH0 = 0x3C;	//For 25ms operation
	mov	_TH0,#0x3C
	C$Q2_adc.c$121$1$28 ==.
;	Q2_adc.c:121: TL0 = 0xB0;
	mov	_TL0,#0xB0
	C$Q2_adc.c$122$1$28 ==.
;	Q2_adc.c:122: take_samples = 1;
	setb	_take_samples
	C$Q2_adc.c$123$1$28 ==.
	XG$timer0_ISR$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_Init'
;------------------------------------------------------------
	G$SPI_Init$0$0 ==.
	C$Q2_adc.c$132$1$28 ==.
;	Q2_adc.c:132: void SPI_Init()
;	-----------------------------------------
;	 function SPI_Init
;	-----------------------------------------
_SPI_Init:
	C$Q2_adc.c$134$1$29 ==.
;	Q2_adc.c:134: CS_BAR = 1;	                 // DISABLE ADC SLAVE SELECT-CS 
	setb	_P1_4
	C$Q2_adc.c$135$1$29 ==.
;	Q2_adc.c:135: SPCON |= 0x20;               	 // P1.1(SSBAR) is available as standard I/O pin
	orl	_SPCON,#0x20
	C$Q2_adc.c$136$1$29 ==.
;	Q2_adc.c:136: SPCON |= 0x01;                	// Fclk Periph/4 AND Fclk Periph=12MHz ,HENCE SCK IE. BAUD RATE=3000KHz 
	orl	_SPCON,#0x01
	C$Q2_adc.c$137$1$29 ==.
;	Q2_adc.c:137: SPCON |= 0x10;               	 // Master mode ..configure SPI as master
	orl	_SPCON,#0x10
	C$Q2_adc.c$138$1$29 ==.
;	Q2_adc.c:138: SPCON &= ~0x08;               	// CPOL=0; transmit mode example|| SCK is 0 at idle state
	mov	r7,_SPCON
	mov	a,#0xF7
	anl	a,r7
	mov	_SPCON,a
	C$Q2_adc.c$139$1$29 ==.
;	Q2_adc.c:139: SPCON |= 0x04;                	// CPHA=1; transmit mode example 
	orl	_SPCON,#0x04
	C$Q2_adc.c$140$1$29 ==.
;	Q2_adc.c:140: SPCON |= 0x40;                	// run spi;ENABLE SPI INTERFACE SPEN= 1 
	orl	_SPCON,#0x40
	C$Q2_adc.c$141$1$29 ==.
;	Q2_adc.c:141: IEN1 |= 0x04;                	 // enable spi interrupt 
	orl	_IEN1,#0x04
	C$Q2_adc.c$142$1$29 ==.
;	Q2_adc.c:142: EA=1;                         	// enable interrupts
	setb	_EA
	C$Q2_adc.c$143$1$29 ==.
	XG$SPI_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer_Init'
;------------------------------------------------------------
	G$Timer_Init$0$0 ==.
	C$Q2_adc.c$150$1$29 ==.
;	Q2_adc.c:150: void Timer_Init()
;	-----------------------------------------
;	 function Timer_Init
;	-----------------------------------------
_Timer_Init:
	C$Q2_adc.c$157$1$30 ==.
;	Q2_adc.c:157: TH0 = 0x3C;			//For 25ms operation
	mov	_TH0,#0x3C
	C$Q2_adc.c$158$1$30 ==.
;	Q2_adc.c:158: TL0 = 0xB0;
	mov	_TL0,#0xB0
	C$Q2_adc.c$159$1$30 ==.
;	Q2_adc.c:159: TMOD = (TMOD & 0xF0) | 0x01;  	// Set T/C0 Mode Timer 0 in Mode 1(as 16 bit T/C)
	mov	a,#0xF0
	anl	a,_TMOD
	orl	a,#0x01
	mov	_TMOD,a
	C$Q2_adc.c$160$1$30 ==.
;	Q2_adc.c:160: ET0 = 1;                      	// Enable Timer 0 Interrupts (in IEN0 register)
	setb	_ET0
	C$Q2_adc.c$161$1$30 ==.
;	Q2_adc.c:161: TR0 = 1;                      	// Start Timer 0 Running 
	setb	_TR0
	C$Q2_adc.c$162$1$30 ==.
	XG$Timer_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_Init'
;------------------------------------------------------------
	G$LCD_Init$0$0 ==.
	C$Q2_adc.c$168$1$30 ==.
;	Q2_adc.c:168: void LCD_Init()
;	-----------------------------------------
;	 function LCD_Init
;	-----------------------------------------
_LCD_Init:
	C$Q2_adc.c$170$1$31 ==.
;	Q2_adc.c:170: sdelay(100);
	mov	dptr,#0x0064
	lcall	_sdelay
	C$Q2_adc.c$171$1$31 ==.
;	Q2_adc.c:171: LCD_CmdWrite(0x38);   	        // LCD 2lines, 5*7 matrix
	mov	dpl,#0x38
	lcall	_LCD_CmdWrite
	C$Q2_adc.c$172$1$31 ==.
;	Q2_adc.c:172: LCD_CmdWrite(0x0E);			// Display ON cursor ON  Blinking off
	mov	dpl,#0x0E
	lcall	_LCD_CmdWrite
	C$Q2_adc.c$173$1$31 ==.
;	Q2_adc.c:173: LCD_CmdWrite(0x01);			// Clear the LCD
	mov	dpl,#0x01
	lcall	_LCD_CmdWrite
	C$Q2_adc.c$174$1$31 ==.
;	Q2_adc.c:174: LCD_CmdWrite(0x80);			// Cursor to First line First Position
	mov	dpl,#0x80
	lcall	_LCD_CmdWrite
	C$Q2_adc.c$175$1$31 ==.
	XG$LCD_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_CmdWrite'
;------------------------------------------------------------
;cmd                       Allocated to registers r7 
;------------------------------------------------------------
	G$LCD_CmdWrite$0$0 ==.
	C$Q2_adc.c$182$1$31 ==.
;	Q2_adc.c:182: void LCD_CmdWrite(char cmd)
;	-----------------------------------------
;	 function LCD_CmdWrite
;	-----------------------------------------
_LCD_CmdWrite:
	mov	r7,dpl
	C$Q2_adc.c$184$1$33 ==.
;	Q2_adc.c:184: LCD_Ready();
	push	ar7
	lcall	_LCD_Ready
	pop	ar7
	C$Q2_adc.c$185$1$33 ==.
;	Q2_adc.c:185: LCD_data=cmd;     			// Send the command to LCD
	mov	_P2,r7
	C$Q2_adc.c$186$1$33 ==.
;	Q2_adc.c:186: LCD_rs=0;         	 		// Select the Command Register by pulling LCD_rs LOW
	clr	_P0_0
	C$Q2_adc.c$187$1$33 ==.
;	Q2_adc.c:187: LCD_rw=0;          			// Select the Write Operation  by pulling RW LOW
	clr	_P0_1
	C$Q2_adc.c$188$1$33 ==.
;	Q2_adc.c:188: LCD_en=1;          			// Send a High-to-Low Pusle at Enable Pin
	setb	_P0_2
	C$Q2_adc.c$189$1$33 ==.
;	Q2_adc.c:189: sdelay(5);
	mov	dptr,#0x0005
	lcall	_sdelay
	C$Q2_adc.c$190$1$33 ==.
;	Q2_adc.c:190: LCD_en=0;
	clr	_P0_2
	C$Q2_adc.c$191$1$33 ==.
;	Q2_adc.c:191: sdelay(5);
	mov	dptr,#0x0005
	lcall	_sdelay
	C$Q2_adc.c$192$1$33 ==.
	XG$LCD_CmdWrite$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_DataWrite'
;------------------------------------------------------------
;dat                       Allocated to registers 
;------------------------------------------------------------
	G$LCD_DataWrite$0$0 ==.
	C$Q2_adc.c$199$1$33 ==.
;	Q2_adc.c:199: void LCD_DataWrite( char dat)
;	-----------------------------------------
;	 function LCD_DataWrite
;	-----------------------------------------
_LCD_DataWrite:
	mov	_P2,dpl
	C$Q2_adc.c$202$1$35 ==.
;	Q2_adc.c:202: LCD_rs=1;	   			// Select the Data Register by pulling LCD_rs HIGH
	setb	_P0_0
	C$Q2_adc.c$203$1$35 ==.
;	Q2_adc.c:203: LCD_rw=0;    	     			// Select the Write Operation by pulling RW LOW
	clr	_P0_1
	C$Q2_adc.c$204$1$35 ==.
;	Q2_adc.c:204: LCD_en=1;	   			// Send a High-to-Low Pusle at Enable Pin
	setb	_P0_2
	C$Q2_adc.c$205$1$35 ==.
;	Q2_adc.c:205: sdelay(5);
	mov	dptr,#0x0005
	lcall	_sdelay
	C$Q2_adc.c$206$1$35 ==.
;	Q2_adc.c:206: LCD_en=0;
	clr	_P0_2
	C$Q2_adc.c$207$1$35 ==.
;	Q2_adc.c:207: sdelay(5);
	mov	dptr,#0x0005
	lcall	_sdelay
	C$Q2_adc.c$208$1$35 ==.
	XG$LCD_DataWrite$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_StringWrite'
;------------------------------------------------------------
;length                    Allocated with name '_LCD_StringWrite_PARM_2'
;str                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$LCD_StringWrite$0$0 ==.
	C$Q2_adc.c$214$1$35 ==.
;	Q2_adc.c:214: void LCD_StringWrite( char * str, unsigned char length)
;	-----------------------------------------
;	 function LCD_StringWrite
;	-----------------------------------------
_LCD_StringWrite:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$Q2_adc.c$216$1$37 ==.
;	Q2_adc.c:216: while(length>0)
00101$:
	mov	a,_LCD_StringWrite_PARM_2
	jz	00104$
	C$Q2_adc.c$218$2$38 ==.
;	Q2_adc.c:218: LCD_DataWrite(*str);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_LCD_DataWrite
	pop	ar5
	pop	ar6
	pop	ar7
	C$Q2_adc.c$219$2$38 ==.
;	Q2_adc.c:219: str++;
	C$Q2_adc.c$220$2$38 ==.
;	Q2_adc.c:220: length--;
	dec	_LCD_StringWrite_PARM_2
	sjmp	00101$
00104$:
	C$Q2_adc.c$222$1$37 ==.
	XG$LCD_StringWrite$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_Ready'
;------------------------------------------------------------
	G$LCD_Ready$0$0 ==.
	C$Q2_adc.c$229$1$37 ==.
;	Q2_adc.c:229: void LCD_Ready() //*****************del
;	-----------------------------------------
;	 function LCD_Ready
;	-----------------------------------------
_LCD_Ready:
	C$Q2_adc.c$231$1$39 ==.
;	Q2_adc.c:231: LCD_data = 0xFF;
	mov	_P2,#0xFF
	C$Q2_adc.c$232$1$39 ==.
;	Q2_adc.c:232: LCD_rs = 0;
	clr	_P0_0
	C$Q2_adc.c$233$1$39 ==.
;	Q2_adc.c:233: LCD_rw = 1;
	setb	_P0_1
	C$Q2_adc.c$234$1$39 ==.
;	Q2_adc.c:234: LCD_en = 0;
	clr	_P0_2
	C$Q2_adc.c$235$1$39 ==.
;	Q2_adc.c:235: sdelay(5);
	mov	dptr,#0x0005
	lcall	_sdelay
	C$Q2_adc.c$236$1$39 ==.
;	Q2_adc.c:236: LCD_en = 1;
	setb	_P0_2
	C$Q2_adc.c$237$1$39 ==.
;	Q2_adc.c:237: while(LCD_busy == 1)
00101$:
	jnb	_P2_7,00103$
	C$Q2_adc.c$239$2$40 ==.
;	Q2_adc.c:239: LCD_en = 0;
	clr	_P0_2
	C$Q2_adc.c$240$2$40 ==.
;	Q2_adc.c:240: LCD_en = 1;
	setb	_P0_2
	sjmp	00101$
00103$:
	C$Q2_adc.c$242$1$39 ==.
;	Q2_adc.c:242: LCD_en = 0;
	clr	_P0_2
	C$Q2_adc.c$243$1$39 ==.
	XG$LCD_Ready$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sdelay'
;------------------------------------------------------------
;delay                     Allocated to registers r6 r7 
;d                         Allocated to registers r5 
;------------------------------------------------------------
	G$sdelay$0$0 ==.
	C$Q2_adc.c$250$1$39 ==.
;	Q2_adc.c:250: void sdelay(int delay)
;	-----------------------------------------
;	 function sdelay
;	-----------------------------------------
_sdelay:
	mov	r6,dpl
	mov	r7,dph
	C$Q2_adc.c$253$1$42 ==.
;	Q2_adc.c:253: while(delay>0)
00102$:
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00108$
	C$Q2_adc.c$255$2$43 ==.
;	Q2_adc.c:255: for(d=0;d<5;d++);
	mov	r5,#0x05
00107$:
	mov	a,r5
	dec	a
	mov	r4,a
	mov	r5,a
	jnz	00107$
	C$Q2_adc.c$256$2$43 ==.
;	Q2_adc.c:256: delay--;
	dec	r6
	cjne	r6,#0xFF,00124$
	dec	r7
00124$:
	sjmp	00102$
00108$:
	C$Q2_adc.c$258$1$42 ==.
	XG$sdelay$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
FQ2_adc$__str_0$0$0 == .
___str_0:
	.ascii "Voltage: xxxxmv"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
