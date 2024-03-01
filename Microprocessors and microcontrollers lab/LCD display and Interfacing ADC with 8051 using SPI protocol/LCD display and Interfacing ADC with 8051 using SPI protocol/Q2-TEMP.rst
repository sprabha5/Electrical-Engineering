                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Mon Oct 17 13:31:24 2022
                                      5 ;--------------------------------------------------------
                                      6 	.module Q2_TEMP
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _timer0_ISR
                                     13 	.globl _it_SPI
                                     14 	.globl _main
                                     15 	.globl _EP6INT
                                     16 	.globl _EP5INT
                                     17 	.globl _EP4INT
                                     18 	.globl _EP3INT
                                     19 	.globl _EP2INT
                                     20 	.globl _EP1INT
                                     21 	.globl _EP0INT
                                     22 	.globl _CF
                                     23 	.globl _CR
                                     24 	.globl _CCF4
                                     25 	.globl _CCF3
                                     26 	.globl _CCF2
                                     27 	.globl _CCF1
                                     28 	.globl _CCF0
                                     29 	.globl _CY
                                     30 	.globl _AC
                                     31 	.globl _F0
                                     32 	.globl _RS1
                                     33 	.globl _RS0
                                     34 	.globl _OV
                                     35 	.globl _F1
                                     36 	.globl _P
                                     37 	.globl _TF2
                                     38 	.globl _EXF2
                                     39 	.globl _RCLK
                                     40 	.globl _TCLK
                                     41 	.globl _EXEN2
                                     42 	.globl _TR2
                                     43 	.globl _C_T2
                                     44 	.globl _CP_RL2
                                     45 	.globl _P4_1
                                     46 	.globl _P4_0
                                     47 	.globl _PPCL
                                     48 	.globl _PT2L
                                     49 	.globl _PSL
                                     50 	.globl _PT1L
                                     51 	.globl _PX1L
                                     52 	.globl _PT0L
                                     53 	.globl _PX0L
                                     54 	.globl _P3_7
                                     55 	.globl _P3_6
                                     56 	.globl _P3_5
                                     57 	.globl _P3_4
                                     58 	.globl _P3_3
                                     59 	.globl _P3_2
                                     60 	.globl _P3_1
                                     61 	.globl _P3_0
                                     62 	.globl _EA
                                     63 	.globl _EC
                                     64 	.globl _ET2
                                     65 	.globl _ES
                                     66 	.globl _ET1
                                     67 	.globl _EX1
                                     68 	.globl _ET0
                                     69 	.globl _EX0
                                     70 	.globl _P2_7
                                     71 	.globl _P2_6
                                     72 	.globl _P2_5
                                     73 	.globl _P2_4
                                     74 	.globl _P2_3
                                     75 	.globl _P2_2
                                     76 	.globl _P2_1
                                     77 	.globl _P2_0
                                     78 	.globl _FE
                                     79 	.globl _SM0
                                     80 	.globl _SM1
                                     81 	.globl _SM2
                                     82 	.globl _REN
                                     83 	.globl _TB8
                                     84 	.globl _RB8
                                     85 	.globl _TI
                                     86 	.globl _RI
                                     87 	.globl _P1_7
                                     88 	.globl _P1_6
                                     89 	.globl _P1_5
                                     90 	.globl _P1_4
                                     91 	.globl _P1_3
                                     92 	.globl _P1_2
                                     93 	.globl _P1_1
                                     94 	.globl _P1_0
                                     95 	.globl _TF1
                                     96 	.globl _TR1
                                     97 	.globl _TF0
                                     98 	.globl _TR0
                                     99 	.globl _IE1
                                    100 	.globl _IT1
                                    101 	.globl _IE0
                                    102 	.globl _IT0
                                    103 	.globl _P0_7
                                    104 	.globl _P0_6
                                    105 	.globl _P0_5
                                    106 	.globl _P0_4
                                    107 	.globl _P0_3
                                    108 	.globl _P0_2
                                    109 	.globl _P0_1
                                    110 	.globl _P0_0
                                    111 	.globl _UEPINT
                                    112 	.globl _LEDCON
                                    113 	.globl _B
                                    114 	.globl _CCAP4H
                                    115 	.globl _CCAP4L
                                    116 	.globl _CCAP4
                                    117 	.globl _CCAP3H
                                    118 	.globl _CCAP3L
                                    119 	.globl _CCAP3
                                    120 	.globl _CCAP2H
                                    121 	.globl _CCAP2L
                                    122 	.globl _CCAP2
                                    123 	.globl _CCAP1H
                                    124 	.globl _CCAP1L
                                    125 	.globl _CCAP1
                                    126 	.globl _CCAP0H
                                    127 	.globl _CCAP0L
                                    128 	.globl _CCAP0
                                    129 	.globl _CH
                                    130 	.globl _CL
                                    131 	.globl _PCA
                                    132 	.globl _UBYCTHX
                                    133 	.globl _UBYCTLX
                                    134 	.globl _UBYCTX
                                    135 	.globl _ACC
                                    136 	.globl _CCAPM4
                                    137 	.globl _CCAPM3
                                    138 	.globl _CCAPM2
                                    139 	.globl _CCAPM1
                                    140 	.globl _CCAPM0
                                    141 	.globl _CMOD
                                    142 	.globl _CCON
                                    143 	.globl _UEPRST
                                    144 	.globl _UEPCONX
                                    145 	.globl _EECON
                                    146 	.globl _FCON
                                    147 	.globl _PSW
                                    148 	.globl _UEPDATX
                                    149 	.globl _UEPSTAX
                                    150 	.globl _TH2
                                    151 	.globl _TL2
                                    152 	.globl _TMR2
                                    153 	.globl _RCAP2H
                                    154 	.globl _RCAP2L
                                    155 	.globl _RCAP2
                                    156 	.globl _T2MOD
                                    157 	.globl _T2CON
                                    158 	.globl _UEPNUM
                                    159 	.globl _USBADDR
                                    160 	.globl _SPDAT
                                    161 	.globl _SPSTA
                                    162 	.globl _SPCON
                                    163 	.globl _UEPIEN
                                    164 	.globl _P4
                                    165 	.globl _USBIEN
                                    166 	.globl _USBINT
                                    167 	.globl _USBCON
                                    168 	.globl _UFNUMH
                                    169 	.globl _UFNUML
                                    170 	.globl _UFNUM
                                    171 	.globl _SADEN
                                    172 	.globl _IPL0
                                    173 	.globl _IPH0
                                    174 	.globl _IPH1
                                    175 	.globl _IPL1
                                    176 	.globl _IEN1
                                    177 	.globl _P3
                                    178 	.globl _CKCON1
                                    179 	.globl _SADDR
                                    180 	.globl _IEN0
                                    181 	.globl _IE
                                    182 	.globl _WDTPRG
                                    183 	.globl _WDTRST
                                    184 	.globl _PLLDIV
                                    185 	.globl _PLLCON
                                    186 	.globl _AUXR1
                                    187 	.globl _P2
                                    188 	.globl _KBF
                                    189 	.globl _KBE
                                    190 	.globl _KBLS
                                    191 	.globl _BDRCON
                                    192 	.globl _BRL
                                    193 	.globl _SBUF
                                    194 	.globl _SCON
                                    195 	.globl _SSADR
                                    196 	.globl _SSDAT
                                    197 	.globl _SSCS
                                    198 	.globl _SSCON
                                    199 	.globl _P1
                                    200 	.globl _CKCON0
                                    201 	.globl _AUXR
                                    202 	.globl _TH1
                                    203 	.globl _TL1
                                    204 	.globl _TMR1
                                    205 	.globl _TH0
                                    206 	.globl _TL0
                                    207 	.globl _TMR0
                                    208 	.globl _TMOD
                                    209 	.globl _TCON
                                    210 	.globl _PCON
                                    211 	.globl _DPH
                                    212 	.globl _DPL
                                    213 	.globl _SP
                                    214 	.globl _P0
                                    215 	.globl _take_samples
                                    216 	.globl _transmit_completed
                                    217 	.globl _LCD_StringWrite_PARM_2
                                    218 	.globl _voltage
                                    219 	.globl _i
                                    220 	.globl _data_save_low
                                    221 	.globl _data_save_high
                                    222 	.globl _serial_data
                                    223 	.globl _avgVal
                                    224 	.globl _adcVal
                                    225 	.globl _SPI_Init
                                    226 	.globl _Timer_Init
                                    227 	.globl _LCD_Init
                                    228 	.globl _LCD_CmdWrite
                                    229 	.globl _LCD_DataWrite
                                    230 	.globl _LCD_StringWrite
                                    231 	.globl _LCD_Ready
                                    232 	.globl _sdelay
                                    233 ;--------------------------------------------------------
                                    234 ; special function registers
                                    235 ;--------------------------------------------------------
                                    236 	.area RSEG    (ABS,DATA)
      000000                        237 	.org 0x0000
                           000080   238 G$P0$0$0 == 0x0080
                           000080   239 _P0	=	0x0080
                           000081   240 G$SP$0$0 == 0x0081
                           000081   241 _SP	=	0x0081
                           000082   242 G$DPL$0$0 == 0x0082
                           000082   243 _DPL	=	0x0082
                           000083   244 G$DPH$0$0 == 0x0083
                           000083   245 _DPH	=	0x0083
                           000087   246 G$PCON$0$0 == 0x0087
                           000087   247 _PCON	=	0x0087
                           000088   248 G$TCON$0$0 == 0x0088
                           000088   249 _TCON	=	0x0088
                           000089   250 G$TMOD$0$0 == 0x0089
                           000089   251 _TMOD	=	0x0089
                           008C8A   252 G$TMR0$0$0 == 0x8c8a
                           008C8A   253 _TMR0	=	0x8c8a
                           00008A   254 G$TL0$0$0 == 0x008a
                           00008A   255 _TL0	=	0x008a
                           00008C   256 G$TH0$0$0 == 0x008c
                           00008C   257 _TH0	=	0x008c
                           008D8B   258 G$TMR1$0$0 == 0x8d8b
                           008D8B   259 _TMR1	=	0x8d8b
                           00008B   260 G$TL1$0$0 == 0x008b
                           00008B   261 _TL1	=	0x008b
                           00008D   262 G$TH1$0$0 == 0x008d
                           00008D   263 _TH1	=	0x008d
                           00008E   264 G$AUXR$0$0 == 0x008e
                           00008E   265 _AUXR	=	0x008e
                           00008F   266 G$CKCON0$0$0 == 0x008f
                           00008F   267 _CKCON0	=	0x008f
                           000090   268 G$P1$0$0 == 0x0090
                           000090   269 _P1	=	0x0090
                           000093   270 G$SSCON$0$0 == 0x0093
                           000093   271 _SSCON	=	0x0093
                           000094   272 G$SSCS$0$0 == 0x0094
                           000094   273 _SSCS	=	0x0094
                           000095   274 G$SSDAT$0$0 == 0x0095
                           000095   275 _SSDAT	=	0x0095
                           000096   276 G$SSADR$0$0 == 0x0096
                           000096   277 _SSADR	=	0x0096
                           000098   278 G$SCON$0$0 == 0x0098
                           000098   279 _SCON	=	0x0098
                           000099   280 G$SBUF$0$0 == 0x0099
                           000099   281 _SBUF	=	0x0099
                           00009A   282 G$BRL$0$0 == 0x009a
                           00009A   283 _BRL	=	0x009a
                           00009B   284 G$BDRCON$0$0 == 0x009b
                           00009B   285 _BDRCON	=	0x009b
                           00009C   286 G$KBLS$0$0 == 0x009c
                           00009C   287 _KBLS	=	0x009c
                           00009D   288 G$KBE$0$0 == 0x009d
                           00009D   289 _KBE	=	0x009d
                           00009E   290 G$KBF$0$0 == 0x009e
                           00009E   291 _KBF	=	0x009e
                           0000A0   292 G$P2$0$0 == 0x00a0
                           0000A0   293 _P2	=	0x00a0
                           0000A2   294 G$AUXR1$0$0 == 0x00a2
                           0000A2   295 _AUXR1	=	0x00a2
                           0000A3   296 G$PLLCON$0$0 == 0x00a3
                           0000A3   297 _PLLCON	=	0x00a3
                           0000A4   298 G$PLLDIV$0$0 == 0x00a4
                           0000A4   299 _PLLDIV	=	0x00a4
                           0000A6   300 G$WDTRST$0$0 == 0x00a6
                           0000A6   301 _WDTRST	=	0x00a6
                           0000A7   302 G$WDTPRG$0$0 == 0x00a7
                           0000A7   303 _WDTPRG	=	0x00a7
                           0000A8   304 G$IE$0$0 == 0x00a8
                           0000A8   305 _IE	=	0x00a8
                           0000A8   306 G$IEN0$0$0 == 0x00a8
                           0000A8   307 _IEN0	=	0x00a8
                           0000A9   308 G$SADDR$0$0 == 0x00a9
                           0000A9   309 _SADDR	=	0x00a9
                           0000AF   310 G$CKCON1$0$0 == 0x00af
                           0000AF   311 _CKCON1	=	0x00af
                           0000B0   312 G$P3$0$0 == 0x00b0
                           0000B0   313 _P3	=	0x00b0
                           0000B1   314 G$IEN1$0$0 == 0x00b1
                           0000B1   315 _IEN1	=	0x00b1
                           0000B2   316 G$IPL1$0$0 == 0x00b2
                           0000B2   317 _IPL1	=	0x00b2
                           0000B3   318 G$IPH1$0$0 == 0x00b3
                           0000B3   319 _IPH1	=	0x00b3
                           0000B7   320 G$IPH0$0$0 == 0x00b7
                           0000B7   321 _IPH0	=	0x00b7
                           0000B8   322 G$IPL0$0$0 == 0x00b8
                           0000B8   323 _IPL0	=	0x00b8
                           0000B9   324 G$SADEN$0$0 == 0x00b9
                           0000B9   325 _SADEN	=	0x00b9
                           00BBBA   326 G$UFNUM$0$0 == 0xbbba
                           00BBBA   327 _UFNUM	=	0xbbba
                           0000BA   328 G$UFNUML$0$0 == 0x00ba
                           0000BA   329 _UFNUML	=	0x00ba
                           0000BB   330 G$UFNUMH$0$0 == 0x00bb
                           0000BB   331 _UFNUMH	=	0x00bb
                           0000BC   332 G$USBCON$0$0 == 0x00bc
                           0000BC   333 _USBCON	=	0x00bc
                           0000BD   334 G$USBINT$0$0 == 0x00bd
                           0000BD   335 _USBINT	=	0x00bd
                           0000BE   336 G$USBIEN$0$0 == 0x00be
                           0000BE   337 _USBIEN	=	0x00be
                           0000C0   338 G$P4$0$0 == 0x00c0
                           0000C0   339 _P4	=	0x00c0
                           0000C2   340 G$UEPIEN$0$0 == 0x00c2
                           0000C2   341 _UEPIEN	=	0x00c2
                           0000C3   342 G$SPCON$0$0 == 0x00c3
                           0000C3   343 _SPCON	=	0x00c3
                           0000C4   344 G$SPSTA$0$0 == 0x00c4
                           0000C4   345 _SPSTA	=	0x00c4
                           0000C5   346 G$SPDAT$0$0 == 0x00c5
                           0000C5   347 _SPDAT	=	0x00c5
                           0000C6   348 G$USBADDR$0$0 == 0x00c6
                           0000C6   349 _USBADDR	=	0x00c6
                           0000C7   350 G$UEPNUM$0$0 == 0x00c7
                           0000C7   351 _UEPNUM	=	0x00c7
                           0000C8   352 G$T2CON$0$0 == 0x00c8
                           0000C8   353 _T2CON	=	0x00c8
                           0000C9   354 G$T2MOD$0$0 == 0x00c9
                           0000C9   355 _T2MOD	=	0x00c9
                           00CBCA   356 G$RCAP2$0$0 == 0xcbca
                           00CBCA   357 _RCAP2	=	0xcbca
                           0000CA   358 G$RCAP2L$0$0 == 0x00ca
                           0000CA   359 _RCAP2L	=	0x00ca
                           0000CB   360 G$RCAP2H$0$0 == 0x00cb
                           0000CB   361 _RCAP2H	=	0x00cb
                           00CDCC   362 G$TMR2$0$0 == 0xcdcc
                           00CDCC   363 _TMR2	=	0xcdcc
                           0000CC   364 G$TL2$0$0 == 0x00cc
                           0000CC   365 _TL2	=	0x00cc
                           0000CD   366 G$TH2$0$0 == 0x00cd
                           0000CD   367 _TH2	=	0x00cd
                           0000CE   368 G$UEPSTAX$0$0 == 0x00ce
                           0000CE   369 _UEPSTAX	=	0x00ce
                           0000CF   370 G$UEPDATX$0$0 == 0x00cf
                           0000CF   371 _UEPDATX	=	0x00cf
                           0000D0   372 G$PSW$0$0 == 0x00d0
                           0000D0   373 _PSW	=	0x00d0
                           0000D1   374 G$FCON$0$0 == 0x00d1
                           0000D1   375 _FCON	=	0x00d1
                           0000D2   376 G$EECON$0$0 == 0x00d2
                           0000D2   377 _EECON	=	0x00d2
                           0000D4   378 G$UEPCONX$0$0 == 0x00d4
                           0000D4   379 _UEPCONX	=	0x00d4
                           0000D5   380 G$UEPRST$0$0 == 0x00d5
                           0000D5   381 _UEPRST	=	0x00d5
                           0000D8   382 G$CCON$0$0 == 0x00d8
                           0000D8   383 _CCON	=	0x00d8
                           0000D9   384 G$CMOD$0$0 == 0x00d9
                           0000D9   385 _CMOD	=	0x00d9
                           0000DA   386 G$CCAPM0$0$0 == 0x00da
                           0000DA   387 _CCAPM0	=	0x00da
                           0000DB   388 G$CCAPM1$0$0 == 0x00db
                           0000DB   389 _CCAPM1	=	0x00db
                           0000DC   390 G$CCAPM2$0$0 == 0x00dc
                           0000DC   391 _CCAPM2	=	0x00dc
                           0000DD   392 G$CCAPM3$0$0 == 0x00dd
                           0000DD   393 _CCAPM3	=	0x00dd
                           0000DE   394 G$CCAPM4$0$0 == 0x00de
                           0000DE   395 _CCAPM4	=	0x00de
                           0000E0   396 G$ACC$0$0 == 0x00e0
                           0000E0   397 _ACC	=	0x00e0
                           00E3E2   398 G$UBYCTX$0$0 == 0xe3e2
                           00E3E2   399 _UBYCTX	=	0xe3e2
                           0000E2   400 G$UBYCTLX$0$0 == 0x00e2
                           0000E2   401 _UBYCTLX	=	0x00e2
                           0000E3   402 G$UBYCTHX$0$0 == 0x00e3
                           0000E3   403 _UBYCTHX	=	0x00e3
                           00F9E9   404 G$PCA$0$0 == 0xf9e9
                           00F9E9   405 _PCA	=	0xf9e9
                           0000E9   406 G$CL$0$0 == 0x00e9
                           0000E9   407 _CL	=	0x00e9
                           0000F9   408 G$CH$0$0 == 0x00f9
                           0000F9   409 _CH	=	0x00f9
                           00FAEA   410 G$CCAP0$0$0 == 0xfaea
                           00FAEA   411 _CCAP0	=	0xfaea
                           0000EA   412 G$CCAP0L$0$0 == 0x00ea
                           0000EA   413 _CCAP0L	=	0x00ea
                           0000FA   414 G$CCAP0H$0$0 == 0x00fa
                           0000FA   415 _CCAP0H	=	0x00fa
                           00FBEB   416 G$CCAP1$0$0 == 0xfbeb
                           00FBEB   417 _CCAP1	=	0xfbeb
                           0000EB   418 G$CCAP1L$0$0 == 0x00eb
                           0000EB   419 _CCAP1L	=	0x00eb
                           0000FB   420 G$CCAP1H$0$0 == 0x00fb
                           0000FB   421 _CCAP1H	=	0x00fb
                           00FCEC   422 G$CCAP2$0$0 == 0xfcec
                           00FCEC   423 _CCAP2	=	0xfcec
                           0000EC   424 G$CCAP2L$0$0 == 0x00ec
                           0000EC   425 _CCAP2L	=	0x00ec
                           0000FC   426 G$CCAP2H$0$0 == 0x00fc
                           0000FC   427 _CCAP2H	=	0x00fc
                           00FDED   428 G$CCAP3$0$0 == 0xfded
                           00FDED   429 _CCAP3	=	0xfded
                           0000ED   430 G$CCAP3L$0$0 == 0x00ed
                           0000ED   431 _CCAP3L	=	0x00ed
                           0000FD   432 G$CCAP3H$0$0 == 0x00fd
                           0000FD   433 _CCAP3H	=	0x00fd
                           00FEEE   434 G$CCAP4$0$0 == 0xfeee
                           00FEEE   435 _CCAP4	=	0xfeee
                           0000EE   436 G$CCAP4L$0$0 == 0x00ee
                           0000EE   437 _CCAP4L	=	0x00ee
                           0000FE   438 G$CCAP4H$0$0 == 0x00fe
                           0000FE   439 _CCAP4H	=	0x00fe
                           0000F0   440 G$B$0$0 == 0x00f0
                           0000F0   441 _B	=	0x00f0
                           0000F1   442 G$LEDCON$0$0 == 0x00f1
                           0000F1   443 _LEDCON	=	0x00f1
                           0000F8   444 G$UEPINT$0$0 == 0x00f8
                           0000F8   445 _UEPINT	=	0x00f8
                                    446 ;--------------------------------------------------------
                                    447 ; special function bits
                                    448 ;--------------------------------------------------------
                                    449 	.area RSEG    (ABS,DATA)
      000000                        450 	.org 0x0000
                           000080   451 G$P0_0$0$0 == 0x0080
                           000080   452 _P0_0	=	0x0080
                           000081   453 G$P0_1$0$0 == 0x0081
                           000081   454 _P0_1	=	0x0081
                           000082   455 G$P0_2$0$0 == 0x0082
                           000082   456 _P0_2	=	0x0082
                           000083   457 G$P0_3$0$0 == 0x0083
                           000083   458 _P0_3	=	0x0083
                           000084   459 G$P0_4$0$0 == 0x0084
                           000084   460 _P0_4	=	0x0084
                           000085   461 G$P0_5$0$0 == 0x0085
                           000085   462 _P0_5	=	0x0085
                           000086   463 G$P0_6$0$0 == 0x0086
                           000086   464 _P0_6	=	0x0086
                           000087   465 G$P0_7$0$0 == 0x0087
                           000087   466 _P0_7	=	0x0087
                           000088   467 G$IT0$0$0 == 0x0088
                           000088   468 _IT0	=	0x0088
                           000089   469 G$IE0$0$0 == 0x0089
                           000089   470 _IE0	=	0x0089
                           00008A   471 G$IT1$0$0 == 0x008a
                           00008A   472 _IT1	=	0x008a
                           00008B   473 G$IE1$0$0 == 0x008b
                           00008B   474 _IE1	=	0x008b
                           00008C   475 G$TR0$0$0 == 0x008c
                           00008C   476 _TR0	=	0x008c
                           00008D   477 G$TF0$0$0 == 0x008d
                           00008D   478 _TF0	=	0x008d
                           00008E   479 G$TR1$0$0 == 0x008e
                           00008E   480 _TR1	=	0x008e
                           00008F   481 G$TF1$0$0 == 0x008f
                           00008F   482 _TF1	=	0x008f
                           000090   483 G$P1_0$0$0 == 0x0090
                           000090   484 _P1_0	=	0x0090
                           000091   485 G$P1_1$0$0 == 0x0091
                           000091   486 _P1_1	=	0x0091
                           000092   487 G$P1_2$0$0 == 0x0092
                           000092   488 _P1_2	=	0x0092
                           000093   489 G$P1_3$0$0 == 0x0093
                           000093   490 _P1_3	=	0x0093
                           000094   491 G$P1_4$0$0 == 0x0094
                           000094   492 _P1_4	=	0x0094
                           000095   493 G$P1_5$0$0 == 0x0095
                           000095   494 _P1_5	=	0x0095
                           000096   495 G$P1_6$0$0 == 0x0096
                           000096   496 _P1_6	=	0x0096
                           000097   497 G$P1_7$0$0 == 0x0097
                           000097   498 _P1_7	=	0x0097
                           000098   499 G$RI$0$0 == 0x0098
                           000098   500 _RI	=	0x0098
                           000099   501 G$TI$0$0 == 0x0099
                           000099   502 _TI	=	0x0099
                           00009A   503 G$RB8$0$0 == 0x009a
                           00009A   504 _RB8	=	0x009a
                           00009B   505 G$TB8$0$0 == 0x009b
                           00009B   506 _TB8	=	0x009b
                           00009C   507 G$REN$0$0 == 0x009c
                           00009C   508 _REN	=	0x009c
                           00009D   509 G$SM2$0$0 == 0x009d
                           00009D   510 _SM2	=	0x009d
                           00009E   511 G$SM1$0$0 == 0x009e
                           00009E   512 _SM1	=	0x009e
                           00009F   513 G$SM0$0$0 == 0x009f
                           00009F   514 _SM0	=	0x009f
                           00009F   515 G$FE$0$0 == 0x009f
                           00009F   516 _FE	=	0x009f
                           0000A0   517 G$P2_0$0$0 == 0x00a0
                           0000A0   518 _P2_0	=	0x00a0
                           0000A1   519 G$P2_1$0$0 == 0x00a1
                           0000A1   520 _P2_1	=	0x00a1
                           0000A2   521 G$P2_2$0$0 == 0x00a2
                           0000A2   522 _P2_2	=	0x00a2
                           0000A3   523 G$P2_3$0$0 == 0x00a3
                           0000A3   524 _P2_3	=	0x00a3
                           0000A4   525 G$P2_4$0$0 == 0x00a4
                           0000A4   526 _P2_4	=	0x00a4
                           0000A5   527 G$P2_5$0$0 == 0x00a5
                           0000A5   528 _P2_5	=	0x00a5
                           0000A6   529 G$P2_6$0$0 == 0x00a6
                           0000A6   530 _P2_6	=	0x00a6
                           0000A7   531 G$P2_7$0$0 == 0x00a7
                           0000A7   532 _P2_7	=	0x00a7
                           0000A8   533 G$EX0$0$0 == 0x00a8
                           0000A8   534 _EX0	=	0x00a8
                           0000A9   535 G$ET0$0$0 == 0x00a9
                           0000A9   536 _ET0	=	0x00a9
                           0000AA   537 G$EX1$0$0 == 0x00aa
                           0000AA   538 _EX1	=	0x00aa
                           0000AB   539 G$ET1$0$0 == 0x00ab
                           0000AB   540 _ET1	=	0x00ab
                           0000AC   541 G$ES$0$0 == 0x00ac
                           0000AC   542 _ES	=	0x00ac
                           0000AD   543 G$ET2$0$0 == 0x00ad
                           0000AD   544 _ET2	=	0x00ad
                           0000AE   545 G$EC$0$0 == 0x00ae
                           0000AE   546 _EC	=	0x00ae
                           0000AF   547 G$EA$0$0 == 0x00af
                           0000AF   548 _EA	=	0x00af
                           0000B0   549 G$P3_0$0$0 == 0x00b0
                           0000B0   550 _P3_0	=	0x00b0
                           0000B1   551 G$P3_1$0$0 == 0x00b1
                           0000B1   552 _P3_1	=	0x00b1
                           0000B2   553 G$P3_2$0$0 == 0x00b2
                           0000B2   554 _P3_2	=	0x00b2
                           0000B3   555 G$P3_3$0$0 == 0x00b3
                           0000B3   556 _P3_3	=	0x00b3
                           0000B4   557 G$P3_4$0$0 == 0x00b4
                           0000B4   558 _P3_4	=	0x00b4
                           0000B5   559 G$P3_5$0$0 == 0x00b5
                           0000B5   560 _P3_5	=	0x00b5
                           0000B6   561 G$P3_6$0$0 == 0x00b6
                           0000B6   562 _P3_6	=	0x00b6
                           0000B7   563 G$P3_7$0$0 == 0x00b7
                           0000B7   564 _P3_7	=	0x00b7
                           0000B8   565 G$PX0L$0$0 == 0x00b8
                           0000B8   566 _PX0L	=	0x00b8
                           0000B9   567 G$PT0L$0$0 == 0x00b9
                           0000B9   568 _PT0L	=	0x00b9
                           0000BA   569 G$PX1L$0$0 == 0x00ba
                           0000BA   570 _PX1L	=	0x00ba
                           0000BB   571 G$PT1L$0$0 == 0x00bb
                           0000BB   572 _PT1L	=	0x00bb
                           0000BC   573 G$PSL$0$0 == 0x00bc
                           0000BC   574 _PSL	=	0x00bc
                           0000BD   575 G$PT2L$0$0 == 0x00bd
                           0000BD   576 _PT2L	=	0x00bd
                           0000BE   577 G$PPCL$0$0 == 0x00be
                           0000BE   578 _PPCL	=	0x00be
                           0000C0   579 G$P4_0$0$0 == 0x00c0
                           0000C0   580 _P4_0	=	0x00c0
                           0000C1   581 G$P4_1$0$0 == 0x00c1
                           0000C1   582 _P4_1	=	0x00c1
                           0000C8   583 G$CP_RL2$0$0 == 0x00c8
                           0000C8   584 _CP_RL2	=	0x00c8
                           0000C9   585 G$C_T2$0$0 == 0x00c9
                           0000C9   586 _C_T2	=	0x00c9
                           0000CA   587 G$TR2$0$0 == 0x00ca
                           0000CA   588 _TR2	=	0x00ca
                           0000CB   589 G$EXEN2$0$0 == 0x00cb
                           0000CB   590 _EXEN2	=	0x00cb
                           0000CC   591 G$TCLK$0$0 == 0x00cc
                           0000CC   592 _TCLK	=	0x00cc
                           0000CD   593 G$RCLK$0$0 == 0x00cd
                           0000CD   594 _RCLK	=	0x00cd
                           0000CE   595 G$EXF2$0$0 == 0x00ce
                           0000CE   596 _EXF2	=	0x00ce
                           0000CF   597 G$TF2$0$0 == 0x00cf
                           0000CF   598 _TF2	=	0x00cf
                           0000D0   599 G$P$0$0 == 0x00d0
                           0000D0   600 _P	=	0x00d0
                           0000D1   601 G$F1$0$0 == 0x00d1
                           0000D1   602 _F1	=	0x00d1
                           0000D2   603 G$OV$0$0 == 0x00d2
                           0000D2   604 _OV	=	0x00d2
                           0000D3   605 G$RS0$0$0 == 0x00d3
                           0000D3   606 _RS0	=	0x00d3
                           0000D4   607 G$RS1$0$0 == 0x00d4
                           0000D4   608 _RS1	=	0x00d4
                           0000D5   609 G$F0$0$0 == 0x00d5
                           0000D5   610 _F0	=	0x00d5
                           0000D6   611 G$AC$0$0 == 0x00d6
                           0000D6   612 _AC	=	0x00d6
                           0000D7   613 G$CY$0$0 == 0x00d7
                           0000D7   614 _CY	=	0x00d7
                           0000D8   615 G$CCF0$0$0 == 0x00d8
                           0000D8   616 _CCF0	=	0x00d8
                           0000D9   617 G$CCF1$0$0 == 0x00d9
                           0000D9   618 _CCF1	=	0x00d9
                           0000DA   619 G$CCF2$0$0 == 0x00da
                           0000DA   620 _CCF2	=	0x00da
                           0000DB   621 G$CCF3$0$0 == 0x00db
                           0000DB   622 _CCF3	=	0x00db
                           0000DC   623 G$CCF4$0$0 == 0x00dc
                           0000DC   624 _CCF4	=	0x00dc
                           0000DE   625 G$CR$0$0 == 0x00de
                           0000DE   626 _CR	=	0x00de
                           0000DF   627 G$CF$0$0 == 0x00df
                           0000DF   628 _CF	=	0x00df
                           0000F8   629 G$EP0INT$0$0 == 0x00f8
                           0000F8   630 _EP0INT	=	0x00f8
                           0000F9   631 G$EP1INT$0$0 == 0x00f9
                           0000F9   632 _EP1INT	=	0x00f9
                           0000FA   633 G$EP2INT$0$0 == 0x00fa
                           0000FA   634 _EP2INT	=	0x00fa
                           0000FB   635 G$EP3INT$0$0 == 0x00fb
                           0000FB   636 _EP3INT	=	0x00fb
                           0000FC   637 G$EP4INT$0$0 == 0x00fc
                           0000FC   638 _EP4INT	=	0x00fc
                           0000FD   639 G$EP5INT$0$0 == 0x00fd
                           0000FD   640 _EP5INT	=	0x00fd
                           0000FE   641 G$EP6INT$0$0 == 0x00fe
                           0000FE   642 _EP6INT	=	0x00fe
                                    643 ;--------------------------------------------------------
                                    644 ; overlayable register banks
                                    645 ;--------------------------------------------------------
                                    646 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        647 	.ds 8
                                    648 ;--------------------------------------------------------
                                    649 ; internal ram data
                                    650 ;--------------------------------------------------------
                                    651 	.area DSEG    (DATA)
                           000000   652 G$adcVal$0$0==.
      000008                        653 _adcVal::
      000008                        654 	.ds 2
                           000002   655 G$avgVal$0$0==.
      00000A                        656 _avgVal::
      00000A                        657 	.ds 2
                           000004   658 G$serial_data$0$0==.
      00000C                        659 _serial_data::
      00000C                        660 	.ds 1
                           000005   661 G$data_save_high$0$0==.
      00000D                        662 _data_save_high::
      00000D                        663 	.ds 1
                           000006   664 G$data_save_low$0$0==.
      00000E                        665 _data_save_low::
      00000E                        666 	.ds 1
                           000007   667 G$i$0$0==.
      00000F                        668 _i::
      00000F                        669 	.ds 1
                           000008   670 G$voltage$0$0==.
      000010                        671 _voltage::
      000010                        672 	.ds 4
                           00000C   673 LQ2_TEMP.LCD_StringWrite$length$1$36==.
      000014                        674 _LCD_StringWrite_PARM_2:
      000014                        675 	.ds 1
                                    676 ;--------------------------------------------------------
                                    677 ; overlayable items in internal ram 
                                    678 ;--------------------------------------------------------
                                    679 ;--------------------------------------------------------
                                    680 ; Stack segment in internal ram 
                                    681 ;--------------------------------------------------------
                                    682 	.area	SSEG
      000021                        683 __start__stack:
      000021                        684 	.ds	1
                                    685 
                                    686 ;--------------------------------------------------------
                                    687 ; indirectly addressable internal ram data
                                    688 ;--------------------------------------------------------
                                    689 	.area ISEG    (DATA)
                                    690 ;--------------------------------------------------------
                                    691 ; absolute internal ram data
                                    692 ;--------------------------------------------------------
                                    693 	.area IABS    (ABS,DATA)
                                    694 	.area IABS    (ABS,DATA)
                                    695 ;--------------------------------------------------------
                                    696 ; bit data
                                    697 ;--------------------------------------------------------
                                    698 	.area BSEG    (BIT)
                           000000   699 G$transmit_completed$0$0==.
      000000                        700 _transmit_completed::
      000000                        701 	.ds 1
                           000001   702 G$take_samples$0$0==.
      000001                        703 _take_samples::
      000001                        704 	.ds 1
                                    705 ;--------------------------------------------------------
                                    706 ; paged external ram data
                                    707 ;--------------------------------------------------------
                                    708 	.area PSEG    (PAG,XDATA)
                                    709 ;--------------------------------------------------------
                                    710 ; external ram data
                                    711 ;--------------------------------------------------------
                                    712 	.area XSEG    (XDATA)
                                    713 ;--------------------------------------------------------
                                    714 ; absolute external ram data
                                    715 ;--------------------------------------------------------
                                    716 	.area XABS    (ABS,XDATA)
                                    717 ;--------------------------------------------------------
                                    718 ; external initialized ram data
                                    719 ;--------------------------------------------------------
                                    720 	.area XISEG   (XDATA)
                                    721 	.area HOME    (CODE)
                                    722 	.area GSINIT0 (CODE)
                                    723 	.area GSINIT1 (CODE)
                                    724 	.area GSINIT2 (CODE)
                                    725 	.area GSINIT3 (CODE)
                                    726 	.area GSINIT4 (CODE)
                                    727 	.area GSINIT5 (CODE)
                                    728 	.area GSINIT  (CODE)
                                    729 	.area GSFINAL (CODE)
                                    730 	.area CSEG    (CODE)
                                    731 ;--------------------------------------------------------
                                    732 ; interrupt vector 
                                    733 ;--------------------------------------------------------
                                    734 	.area HOME    (CODE)
      000000                        735 __interrupt_vect:
      000000 02 00 51         [24]  736 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  737 	reti
      000004                        738 	.ds	7
      00000B 02 02 5A         [24]  739 	ljmp	_timer0_ISR
      00000E                        740 	.ds	5
      000013 32               [24]  741 	reti
      000014                        742 	.ds	7
      00001B 32               [24]  743 	reti
      00001C                        744 	.ds	7
      000023 32               [24]  745 	reti
      000024                        746 	.ds	7
      00002B 32               [24]  747 	reti
      00002C                        748 	.ds	7
      000033 32               [24]  749 	reti
      000034                        750 	.ds	7
      00003B 32               [24]  751 	reti
      00003C                        752 	.ds	7
      000043 32               [24]  753 	reti
      000044                        754 	.ds	7
      00004B 02 02 3A         [24]  755 	ljmp	_it_SPI
                                    756 ;--------------------------------------------------------
                                    757 ; global & static initialisations
                                    758 ;--------------------------------------------------------
                                    759 	.area HOME    (CODE)
                                    760 	.area GSINIT  (CODE)
                                    761 	.area GSFINAL (CODE)
                                    762 	.area GSINIT  (CODE)
                                    763 	.globl __sdcc_gsinit_startup
                                    764 	.globl __sdcc_program_startup
                                    765 	.globl __start__stack
                                    766 	.globl __mcs51_genXINIT
                                    767 	.globl __mcs51_genXRAMCLEAR
                                    768 	.globl __mcs51_genRAMCLEAR
                           000000   769 	C$Q2_TEMP.c$24$1$42 ==.
                                    770 ;	Q2-TEMP.c:24: int adcVal=0, avgVal=0; //initVal=0;
      0000AA E4               [12]  771 	clr	a
      0000AB F5 08            [12]  772 	mov	_adcVal,a
      0000AD F5 09            [12]  773 	mov	(_adcVal + 1),a
                           000005   774 	C$Q2_TEMP.c$24$1$42 ==.
                                    775 ;	Q2-TEMP.c:24: unsigned char serial_data;
      0000AF F5 0A            [12]  776 	mov	_avgVal,a
      0000B1 F5 0B            [12]  777 	mov	(_avgVal + 1),a
                           000009   778 	C$Q2_TEMP.c$28$1$42 ==.
                                    779 ;	Q2-TEMP.c:28: unsigned char i=0;
                                    780 ;	1-genFromRTrack replaced	mov	_i,#0x00
      0000B3 F5 0F            [12]  781 	mov	_i,a
                           00000B   782 	C$Q2_TEMP.c$21$1$42 ==.
                                    783 ;	Q2-TEMP.c:21: __bit transmit_completed= 0;					// To check if spi data transmit is complete
      0000B5 C2 00            [12]  784 	clr	_transmit_completed
                           00000D   785 	C$Q2_TEMP.c$22$1$42 ==.
                                    786 ;	Q2-TEMP.c:22: __bit take_samples=0;
      0000B7 C2 01            [12]  787 	clr	_take_samples
                                    788 	.area GSFINAL (CODE)
      0000B9 02 00 4E         [24]  789 	ljmp	__sdcc_program_startup
                                    790 ;--------------------------------------------------------
                                    791 ; Home
                                    792 ;--------------------------------------------------------
                                    793 	.area HOME    (CODE)
                                    794 	.area HOME    (CODE)
      00004E                        795 __sdcc_program_startup:
      00004E 02 00 BC         [24]  796 	ljmp	_main
                                    797 ;	return from main will return to caller
                                    798 ;--------------------------------------------------------
                                    799 ; code
                                    800 ;--------------------------------------------------------
                                    801 	.area CSEG    (CODE)
                                    802 ;------------------------------------------------------------
                                    803 ;Allocation info for local variables in function 'main'
                                    804 ;------------------------------------------------------------
                           000000   805 	G$main$0$0 ==.
                           000000   806 	C$Q2_TEMP.c$38$0$0 ==.
                                    807 ;	Q2-TEMP.c:38: void main(void)
                                    808 ;	-----------------------------------------
                                    809 ;	 function main
                                    810 ;	-----------------------------------------
      0000BC                        811 _main:
                           000007   812 	ar7 = 0x07
                           000006   813 	ar6 = 0x06
                           000005   814 	ar5 = 0x05
                           000004   815 	ar4 = 0x04
                           000003   816 	ar3 = 0x03
                           000002   817 	ar2 = 0x02
                           000001   818 	ar1 = 0x01
                           000000   819 	ar0 = 0x00
                           000000   820 	C$Q2_TEMP.c$40$1$20 ==.
                                    821 ;	Q2-TEMP.c:40: P2 = 0x00;								// Make Port 2 output .. for LCD data
      0000BC 75 A0 00         [24]  822 	mov	_P2,#0x00
                           000003   823 	C$Q2_TEMP.c$41$1$20 ==.
                                    824 ;	Q2-TEMP.c:41: P1 &= 0xEF;								// Make P1 Pin4 as output
      0000BF 53 90 EF         [24]  825 	anl	_P1,#0xEF
                           000006   826 	C$Q2_TEMP.c$42$1$20 ==.
                                    827 ;	Q2-TEMP.c:42: P0 &= 0xF8;								// Make Port 0 Pins 0,1,2 output
      0000C2 53 80 F8         [24]  828 	anl	_P0,#0xF8
                           000009   829 	C$Q2_TEMP.c$44$1$20 ==.
                                    830 ;	Q2-TEMP.c:44: SPI_Init();
      0000C5 12 02 63         [24]  831 	lcall	_SPI_Init
                           00000C   832 	C$Q2_TEMP.c$45$1$20 ==.
                                    833 ;	Q2-TEMP.c:45: LCD_Init();
      0000C8 12 02 94         [24]  834 	lcall	_LCD_Init
                           00000F   835 	C$Q2_TEMP.c$46$1$20 ==.
                                    836 ;	Q2-TEMP.c:46: Timer_Init();
      0000CB 12 02 81         [24]  837 	lcall	_Timer_Init
                           000012   838 	C$Q2_TEMP.c$47$1$20 ==.
                                    839 ;	Q2-TEMP.c:47: LCD_StringWrite("Temper:  xxxx C", 15);
      0000CE 75 14 0F         [24]  840 	mov	_LCD_StringWrite_PARM_2,#0x0F
      0000D1 90 07 91         [24]  841 	mov	dptr,#___str_0
      0000D4 75 F0 80         [24]  842 	mov	b,#0x80
      0000D7 12 02 EB         [24]  843 	lcall	_LCD_StringWrite
                           00001E   844 	C$Q2_TEMP.c$51$2$21 ==.
                                    845 ;	Q2-TEMP.c:51: while(take_samples)                     //Take 10 samples at regular intervals using timer and 
      0000DA                        846 00111$:
      0000DA 30 01 FD         [24]  847 	jnb	_take_samples,00111$
                           000021   848 	C$Q2_TEMP.c$55$3$22 ==.
                                    849 ;	Q2-TEMP.c:55: for(i = 0; i < 10; i++)
      0000DD 75 0F 00         [24]  850 	mov	_i,#0x00
      0000E0 C2 01            [12]  851 	clr	_take_samples
      0000E2                        852 00117$:
                           000026   853 	C$Q2_TEMP.c$57$4$23 ==.
                                    854 ;	Q2-TEMP.c:57: CS_BAR = 0;                 // enable ADC as slave		 
      0000E2 C2 94            [12]  855 	clr	_P1_4
                           000028   856 	C$Q2_TEMP.c$58$4$23 ==.
                                    857 ;	Q2-TEMP.c:58: SPDAT= 0x01;		    // Write start bit to start ADC(Timing Diagram) 
      0000E4 75 C5 01         [24]  858 	mov	_SPDAT,#0x01
                           00002B   859 	C$Q2_TEMP.c$59$4$23 ==.
                                    860 ;	Q2-TEMP.c:59: while(!transmit_completed);	// wait end of transmition;
      0000E7                        861 00101$:
                           00002B   862 	C$Q2_TEMP.c$60$4$23 ==.
                                    863 ;	Q2-TEMP.c:60: transmit_completed = 0;    	// clear software transfert flag 
      0000E7 10 00 02         [24]  864 	jbc	_transmit_completed,00152$
      0000EA 80 FB            [24]  865 	sjmp	00101$
      0000EC                        866 00152$:
                           000030   867 	C$Q2_TEMP.c$61$4$23 ==.
                                    868 ;	Q2-TEMP.c:61: SPDAT= 0x80;			// 80H written to start ADC CH0 single ended sampling(refer D0D1D2config diag.)
      0000EC 75 C5 80         [24]  869 	mov	_SPDAT,#0x80
                           000033   870 	C$Q2_TEMP.c$62$4$23 ==.
                                    871 ;	Q2-TEMP.c:62: while(!transmit_completed);	// wait end of transmition 
      0000EF                        872 00104$:
      0000EF 30 00 FD         [24]  873 	jnb	_transmit_completed,00104$
                           000036   874 	C$Q2_TEMP.c$63$4$23 ==.
                                    875 ;	Q2-TEMP.c:63: data_save_high = serial_data & 0x03 ;  //
      0000F2 74 03            [12]  876 	mov	a,#0x03
      0000F4 55 0C            [12]  877 	anl	a,_serial_data
      0000F6 F5 0D            [12]  878 	mov	_data_save_high,a
                           00003C   879 	C$Q2_TEMP.c$64$4$23 ==.
                                    880 ;	Q2-TEMP.c:64: transmit_completed = 0;    	// clear software transfer flag 
      0000F8 C2 00            [12]  881 	clr	_transmit_completed
                           00003E   882 	C$Q2_TEMP.c$66$4$23 ==.
                                    883 ;	Q2-TEMP.c:66: SPDAT= 0x00;			// 
      0000FA 75 C5 00         [24]  884 	mov	_SPDAT,#0x00
                           000041   885 	C$Q2_TEMP.c$67$4$23 ==.
                                    886 ;	Q2-TEMP.c:67: while(!transmit_completed);	// wait end of transmition 
      0000FD                        887 00107$:
      0000FD 30 00 FD         [24]  888 	jnb	_transmit_completed,00107$
                           000044   889 	C$Q2_TEMP.c$68$4$23 ==.
                                    890 ;	Q2-TEMP.c:68: data_save_low = serial_data;
      000100 85 0C 0E         [24]  891 	mov	_data_save_low,_serial_data
                           000047   892 	C$Q2_TEMP.c$69$4$23 ==.
                                    893 ;	Q2-TEMP.c:69: transmit_completed = 0;    	// clear software transfer flag 
      000103 C2 00            [12]  894 	clr	_transmit_completed
                           000049   895 	C$Q2_TEMP.c$70$4$23 ==.
                                    896 ;	Q2-TEMP.c:70: CS_BAR = 1;                	// disable ADC as slave
      000105 D2 94            [12]  897 	setb	_P1_4
                           00004B   898 	C$Q2_TEMP.c$72$4$23 ==.
                                    899 ;	Q2-TEMP.c:72: adcVal = (data_save_high <<8) + (data_save_low);
      000107 AF 0D            [24]  900 	mov	r7,_data_save_high
      000109 7E 00            [12]  901 	mov	r6,#0x00
      00010B AC 0E            [24]  902 	mov	r4,_data_save_low
      00010D 7D 00            [12]  903 	mov	r5,#0x00
      00010F EC               [12]  904 	mov	a,r4
      000110 2E               [12]  905 	add	a,r6
      000111 F5 08            [12]  906 	mov	_adcVal,a
      000113 ED               [12]  907 	mov	a,r5
      000114 3F               [12]  908 	addc	a,r7
      000115 F5 09            [12]  909 	mov	(_adcVal + 1),a
                           00005B   910 	C$Q2_TEMP.c$73$4$23 ==.
                                    911 ;	Q2-TEMP.c:73: avgVal += adcVal;		// accumulate the readings in avgVal
      000117 E5 08            [12]  912 	mov	a,_adcVal
      000119 25 0A            [12]  913 	add	a,_avgVal
      00011B F5 0A            [12]  914 	mov	_avgVal,a
      00011D E5 09            [12]  915 	mov	a,(_adcVal + 1)
      00011F 35 0B            [12]  916 	addc	a,(_avgVal + 1)
      000121 F5 0B            [12]  917 	mov	(_avgVal + 1),a
                           000067   918 	C$Q2_TEMP.c$55$3$22 ==.
                                    919 ;	Q2-TEMP.c:55: for(i = 0; i < 10; i++)
      000123 05 0F            [12]  920 	inc	_i
      000125 74 F6            [12]  921 	mov	a,#0x100 - 0x0A
      000127 25 0F            [12]  922 	add	a,_i
      000129 50 B7            [24]  923 	jnc	00117$
                           00006F   924 	C$Q2_TEMP.c$76$1$20 ==.
                                    925 ;	Q2-TEMP.c:76: avgVal = avgVal/100.0;			// the average reading
      00012B 85 0A 82         [24]  926 	mov	dpl,_avgVal
      00012E 85 0B 83         [24]  927 	mov	dph,(_avgVal + 1)
      000131 12 04 D3         [24]  928 	lcall	___sint2fs
      000134 AC 82            [24]  929 	mov	r4,dpl
      000136 AD 83            [24]  930 	mov	r5,dph
      000138 AE F0            [24]  931 	mov	r6,b
      00013A FF               [12]  932 	mov	r7,a
      00013B E4               [12]  933 	clr	a
      00013C C0 E0            [24]  934 	push	acc
      00013E C0 E0            [24]  935 	push	acc
      000140 74 C8            [12]  936 	mov	a,#0xC8
      000142 C0 E0            [24]  937 	push	acc
      000144 74 42            [12]  938 	mov	a,#0x42
      000146 C0 E0            [24]  939 	push	acc
      000148 8C 82            [24]  940 	mov	dpl,r4
      00014A 8D 83            [24]  941 	mov	dph,r5
      00014C 8E F0            [24]  942 	mov	b,r6
      00014E EF               [12]  943 	mov	a,r7
      00014F 12 05 63         [24]  944 	lcall	___fsdiv
      000152 AC 82            [24]  945 	mov	r4,dpl
      000154 AD 83            [24]  946 	mov	r5,dph
      000156 AE F0            [24]  947 	mov	r6,b
      000158 FF               [12]  948 	mov	r7,a
      000159 E5 81            [12]  949 	mov	a,sp
      00015B 24 FC            [12]  950 	add	a,#0xfc
      00015D F5 81            [12]  951 	mov	sp,a
      00015F 8C 82            [24]  952 	mov	dpl,r4
      000161 8D 83            [24]  953 	mov	dph,r5
      000163 8E F0            [24]  954 	mov	b,r6
      000165 EF               [12]  955 	mov	a,r7
      000166 12 04 E0         [24]  956 	lcall	___fs2sint
                           0000AD   957 	C$Q2_TEMP.c$77$1$20 ==.
                                    958 ;	Q2-TEMP.c:77: avgVal = avgVal*(3300.0/1024.0); // in mV
      000169 85 82 0A         [24]  959 	mov	_avgVal,dpl
      00016C 85 83 0B         [24]  960 	mov	(_avgVal + 1),dph
      00016F 85 0B 83         [24]  961 	mov	dph,(_avgVal + 1)
      000172 12 04 D3         [24]  962 	lcall	___sint2fs
      000175 AC 82            [24]  963 	mov	r4,dpl
      000177 AD 83            [24]  964 	mov	r5,dph
      000179 AE F0            [24]  965 	mov	r6,b
      00017B FF               [12]  966 	mov	r7,a
      00017C C0 04            [24]  967 	push	ar4
      00017E C0 05            [24]  968 	push	ar5
      000180 C0 06            [24]  969 	push	ar6
      000182 C0 07            [24]  970 	push	ar7
      000184 90 40 00         [24]  971 	mov	dptr,#0x4000
      000187 75 F0 4E         [24]  972 	mov	b,#0x4E
      00018A 74 40            [12]  973 	mov	a,#0x40
      00018C 12 03 59         [24]  974 	lcall	___fsmul
      00018F AC 82            [24]  975 	mov	r4,dpl
      000191 AD 83            [24]  976 	mov	r5,dph
      000193 AE F0            [24]  977 	mov	r6,b
      000195 FF               [12]  978 	mov	r7,a
      000196 E5 81            [12]  979 	mov	a,sp
      000198 24 FC            [12]  980 	add	a,#0xfc
      00019A F5 81            [12]  981 	mov	sp,a
      00019C 8C 82            [24]  982 	mov	dpl,r4
      00019E 8D 83            [24]  983 	mov	dph,r5
      0001A0 8E F0            [24]  984 	mov	b,r6
      0001A2 EF               [12]  985 	mov	a,r7
      0001A3 12 04 E0         [24]  986 	lcall	___fs2sint
      0001A6 85 82 0A         [24]  987 	mov	_avgVal,dpl
      0001A9 85 83 0B         [24]  988 	mov	(_avgVal + 1),dph
                           0000F0   989 	C$Q2_TEMP.c$78$3$22 ==.
                                    990 ;	Q2-TEMP.c:78: LCD_CmdWrite(0x89);		 //
      0001AC 75 82 89         [24]  991 	mov	dpl,#0x89
      0001AF 12 02 B3         [24]  992 	lcall	_LCD_CmdWrite
                           0000F6   993 	C$Q2_TEMP.c$79$3$22 ==.
                                    994 ;	Q2-TEMP.c:79: voltage[3] = avgVal%10 + 0x30; // add 0x30 to convert the corresponding number to ASCII
      0001B2 75 15 0A         [24]  995 	mov	__modsint_PARM_2,#0x0A
      0001B5 75 16 00         [24]  996 	mov	(__modsint_PARM_2 + 1),#0x00
      0001B8 85 0A 82         [24]  997 	mov	dpl,_avgVal
      0001BB 85 0B 83         [24]  998 	mov	dph,(_avgVal + 1)
      0001BE 12 06 42         [24]  999 	lcall	__modsint
      0001C1 AE 82            [24] 1000 	mov	r6,dpl
      0001C3 74 30            [12] 1001 	mov	a,#0x30
      0001C5 2E               [12] 1002 	add	a,r6
      0001C6 F5 13            [12] 1003 	mov	(_voltage + 0x0003),a
                           00010C  1004 	C$Q2_TEMP.c$80$1$20 ==.
                                   1005 ;	Q2-TEMP.c:80: avgVal = avgVal/10;
      0001C8 75 15 0A         [24] 1006 	mov	__divsint_PARM_2,#0x0A
      0001CB 75 16 00         [24] 1007 	mov	(__divsint_PARM_2 + 1),#0x00
      0001CE 85 0A 82         [24] 1008 	mov	dpl,_avgVal
      0001D1 85 0B 83         [24] 1009 	mov	dph,(_avgVal + 1)
      0001D4 12 06 A5         [24] 1010 	lcall	__divsint
                           00011B  1011 	C$Q2_TEMP.c$81$3$22 ==.
                                   1012 ;	Q2-TEMP.c:81: voltage[2] = avgVal%10 + 0x30;
      0001D7 85 82 0A         [24] 1013 	mov	_avgVal,dpl
      0001DA 85 83 0B         [24] 1014 	mov	(_avgVal + 1),dph
      0001DD 75 15 0A         [24] 1015 	mov	__modsint_PARM_2,#0x0A
      0001E0 75 16 00         [24] 1016 	mov	(__modsint_PARM_2 + 1),#0x00
      0001E3 12 06 42         [24] 1017 	lcall	__modsint
      0001E6 AE 82            [24] 1018 	mov	r6,dpl
      0001E8 74 30            [12] 1019 	mov	a,#0x30
      0001EA 2E               [12] 1020 	add	a,r6
      0001EB F5 12            [12] 1021 	mov	(_voltage + 0x0002),a
                           000131  1022 	C$Q2_TEMP.c$82$1$20 ==.
                                   1023 ;	Q2-TEMP.c:82: avgVal = avgVal/10;
      0001ED 75 15 0A         [24] 1024 	mov	__divsint_PARM_2,#0x0A
      0001F0 75 16 00         [24] 1025 	mov	(__divsint_PARM_2 + 1),#0x00
      0001F3 85 0A 82         [24] 1026 	mov	dpl,_avgVal
      0001F6 85 0B 83         [24] 1027 	mov	dph,(_avgVal + 1)
      0001F9 12 06 A5         [24] 1028 	lcall	__divsint
                           000140  1029 	C$Q2_TEMP.c$83$3$22 ==.
                                   1030 ;	Q2-TEMP.c:83: voltage[1] = avgVal%10 + 0x30;
      0001FC 85 82 0A         [24] 1031 	mov	_avgVal,dpl
      0001FF 85 83 0B         [24] 1032 	mov	(_avgVal + 1),dph
      000202 75 15 0A         [24] 1033 	mov	__modsint_PARM_2,#0x0A
      000205 75 16 00         [24] 1034 	mov	(__modsint_PARM_2 + 1),#0x00
      000208 12 06 42         [24] 1035 	lcall	__modsint
      00020B AE 82            [24] 1036 	mov	r6,dpl
      00020D 74 30            [12] 1037 	mov	a,#0x30
      00020F 2E               [12] 1038 	add	a,r6
      000210 F5 11            [12] 1039 	mov	(_voltage + 0x0001),a
                           000156  1040 	C$Q2_TEMP.c$84$1$20 ==.
                                   1041 ;	Q2-TEMP.c:84: avgVal = avgVal/10;
      000212 75 15 0A         [24] 1042 	mov	__divsint_PARM_2,#0x0A
      000215 75 16 00         [24] 1043 	mov	(__divsint_PARM_2 + 1),#0x00
      000218 85 0A 82         [24] 1044 	mov	dpl,_avgVal
      00021B 85 0B 83         [24] 1045 	mov	dph,(_avgVal + 1)
      00021E 12 06 A5         [24] 1046 	lcall	__divsint
      000221 85 82 0A         [24] 1047 	mov	_avgVal,dpl
      000224 85 83 0B         [24] 1048 	mov	(_avgVal + 1),dph
                           00016B  1049 	C$Q2_TEMP.c$85$3$22 ==.
                                   1050 ;	Q2-TEMP.c:85: voltage[0] = '0';
      000227 75 10 30         [24] 1051 	mov	_voltage,#0x30
                           00016E  1052 	C$Q2_TEMP.c$86$3$22 ==.
                                   1053 ;	Q2-TEMP.c:86: LCD_StringWrite(voltage, 4);
      00022A 75 14 04         [24] 1054 	mov	_LCD_StringWrite_PARM_2,#0x04
      00022D 90 00 10         [24] 1055 	mov	dptr,#_voltage
      000230 75 F0 40         [24] 1056 	mov	b,#0x40
      000233 12 02 EB         [24] 1057 	lcall	_LCD_StringWrite
      000236 02 00 DA         [24] 1058 	ljmp	00111$
                           00017D  1059 	C$Q2_TEMP.c$90$1$20 ==.
                           00017D  1060 	XG$main$0$0 ==.
      000239 22               [24] 1061 	ret
                                   1062 ;------------------------------------------------------------
                                   1063 ;Allocation info for local variables in function 'it_SPI'
                                   1064 ;------------------------------------------------------------
                           00017E  1065 	G$it_SPI$0$0 ==.
                           00017E  1066 	C$Q2_TEMP.c$97$1$20 ==.
                                   1067 ;	Q2-TEMP.c:97: void it_SPI(void) __interrupt 9 /* interrupt address is 0x004B */
                                   1068 ;	-----------------------------------------
                                   1069 ;	 function it_SPI
                                   1070 ;	-----------------------------------------
      00023A                       1071 _it_SPI:
      00023A C0 07            [24] 1072 	push	ar7
      00023C C0 D0            [24] 1073 	push	psw
      00023E 75 D0 00         [24] 1074 	mov	psw,#0x00
                           000185  1075 	C$Q2_TEMP.c$99$1$25 ==.
                                   1076 ;	Q2-TEMP.c:99: switch	( SPSTA )         /* read and clear spi status register */
      000241 AF C4            [24] 1077 	mov	r7,_SPSTA
      000243 BF 10 02         [24] 1078 	cjne	r7,#0x10,00116$
      000246 80 0D            [24] 1079 	sjmp	00105$
      000248                       1080 00116$:
      000248 BF 40 02         [24] 1081 	cjne	r7,#0x40,00117$
      00024B 80 08            [24] 1082 	sjmp	00105$
      00024D                       1083 00117$:
      00024D BF 80 05         [24] 1084 	cjne	r7,#0x80,00105$
                           000194  1085 	C$Q2_TEMP.c$102$2$26 ==.
                                   1086 ;	Q2-TEMP.c:102: serial_data=SPDAT;   /* read receive data */
      000250 85 C5 0C         [24] 1087 	mov	_serial_data,_SPDAT
                           000197  1088 	C$Q2_TEMP.c$103$2$26 ==.
                                   1089 ;	Q2-TEMP.c:103: transmit_completed=1;/* set software flag */
      000253 D2 00            [12] 1090 	setb	_transmit_completed
                           000199  1091 	C$Q2_TEMP.c$113$1$25 ==.
                                   1092 ;	Q2-TEMP.c:113: }
      000255                       1093 00105$:
      000255 D0 D0            [24] 1094 	pop	psw
      000257 D0 07            [24] 1095 	pop	ar7
                           00019D  1096 	C$Q2_TEMP.c$114$1$25 ==.
                           00019D  1097 	XG$it_SPI$0$0 ==.
      000259 32               [24] 1098 	reti
                                   1099 ;	eliminated unneeded push/pop dpl
                                   1100 ;	eliminated unneeded push/pop dph
                                   1101 ;	eliminated unneeded push/pop b
                                   1102 ;	eliminated unneeded push/pop acc
                                   1103 ;------------------------------------------------------------
                                   1104 ;Allocation info for local variables in function 'timer0_ISR'
                                   1105 ;------------------------------------------------------------
                           00019E  1106 	G$timer0_ISR$0$0 ==.
                           00019E  1107 	C$Q2_TEMP.c$116$1$25 ==.
                                   1108 ;	Q2-TEMP.c:116: void timer0_ISR (void) __interrupt 1
                                   1109 ;	-----------------------------------------
                                   1110 ;	 function timer0_ISR
                                   1111 ;	-----------------------------------------
      00025A                       1112 _timer0_ISR:
                           00019E  1113 	C$Q2_TEMP.c$118$1$28 ==.
                                   1114 ;	Q2-TEMP.c:118: TH0 = 0x3C;	//For 25ms operation
      00025A 75 8C 3C         [24] 1115 	mov	_TH0,#0x3C
                           0001A1  1116 	C$Q2_TEMP.c$119$1$28 ==.
                                   1117 ;	Q2-TEMP.c:119: TL0 = 0xB0;
      00025D 75 8A B0         [24] 1118 	mov	_TL0,#0xB0
                           0001A4  1119 	C$Q2_TEMP.c$120$1$28 ==.
                                   1120 ;	Q2-TEMP.c:120: take_samples = 1;
      000260 D2 01            [12] 1121 	setb	_take_samples
                           0001A6  1122 	C$Q2_TEMP.c$121$1$28 ==.
                           0001A6  1123 	XG$timer0_ISR$0$0 ==.
      000262 32               [24] 1124 	reti
                                   1125 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1126 ;	eliminated unneeded push/pop psw
                                   1127 ;	eliminated unneeded push/pop dpl
                                   1128 ;	eliminated unneeded push/pop dph
                                   1129 ;	eliminated unneeded push/pop b
                                   1130 ;	eliminated unneeded push/pop acc
                                   1131 ;------------------------------------------------------------
                                   1132 ;Allocation info for local variables in function 'SPI_Init'
                                   1133 ;------------------------------------------------------------
                           0001A7  1134 	G$SPI_Init$0$0 ==.
                           0001A7  1135 	C$Q2_TEMP.c$130$1$28 ==.
                                   1136 ;	Q2-TEMP.c:130: void SPI_Init()
                                   1137 ;	-----------------------------------------
                                   1138 ;	 function SPI_Init
                                   1139 ;	-----------------------------------------
      000263                       1140 _SPI_Init:
                           0001A7  1141 	C$Q2_TEMP.c$132$1$29 ==.
                                   1142 ;	Q2-TEMP.c:132: CS_BAR = 1;	                 // DISABLE ADC SLAVE SELECT-CS 
      000263 D2 94            [12] 1143 	setb	_P1_4
                           0001A9  1144 	C$Q2_TEMP.c$133$1$29 ==.
                                   1145 ;	Q2-TEMP.c:133: SPCON |= 0x20;               	 // P1.1(SSBAR) is available as standard I/O pin
      000265 43 C3 20         [24] 1146 	orl	_SPCON,#0x20
                           0001AC  1147 	C$Q2_TEMP.c$134$1$29 ==.
                                   1148 ;	Q2-TEMP.c:134: SPCON |= 0x01;                	// Fclk Periph/4 AND Fclk Periph=12MHz ,HENCE SCK IE. BAUD RATE=3000KHz 
      000268 43 C3 01         [24] 1149 	orl	_SPCON,#0x01
                           0001AF  1150 	C$Q2_TEMP.c$135$1$29 ==.
                                   1151 ;	Q2-TEMP.c:135: SPCON |= 0x10;               	 // Master mode ..configure SPI as master
      00026B 43 C3 10         [24] 1152 	orl	_SPCON,#0x10
                           0001B2  1153 	C$Q2_TEMP.c$136$1$29 ==.
                                   1154 ;	Q2-TEMP.c:136: SPCON &= ~0x08;               	// CPOL=0; transmit mode example|| SCK is 0 at idle state
      00026E AF C3            [24] 1155 	mov	r7,_SPCON
      000270 74 F7            [12] 1156 	mov	a,#0xF7
      000272 5F               [12] 1157 	anl	a,r7
      000273 F5 C3            [12] 1158 	mov	_SPCON,a
                           0001B9  1159 	C$Q2_TEMP.c$137$1$29 ==.
                                   1160 ;	Q2-TEMP.c:137: SPCON |= 0x04;                	// CPHA=1; transmit mode example 
      000275 43 C3 04         [24] 1161 	orl	_SPCON,#0x04
                           0001BC  1162 	C$Q2_TEMP.c$138$1$29 ==.
                                   1163 ;	Q2-TEMP.c:138: SPCON |= 0x40;                	// run spi;ENABLE SPI INTERFACE SPEN= 1 
      000278 43 C3 40         [24] 1164 	orl	_SPCON,#0x40
                           0001BF  1165 	C$Q2_TEMP.c$139$1$29 ==.
                                   1166 ;	Q2-TEMP.c:139: IEN1 |= 0x04;                	 // enable spi interrupt 
      00027B 43 B1 04         [24] 1167 	orl	_IEN1,#0x04
                           0001C2  1168 	C$Q2_TEMP.c$140$1$29 ==.
                                   1169 ;	Q2-TEMP.c:140: EA=1;                         	// enable interrupts
      00027E D2 AF            [12] 1170 	setb	_EA
                           0001C4  1171 	C$Q2_TEMP.c$141$1$29 ==.
                           0001C4  1172 	XG$SPI_Init$0$0 ==.
      000280 22               [24] 1173 	ret
                                   1174 ;------------------------------------------------------------
                                   1175 ;Allocation info for local variables in function 'Timer_Init'
                                   1176 ;------------------------------------------------------------
                           0001C5  1177 	G$Timer_Init$0$0 ==.
                           0001C5  1178 	C$Q2_TEMP.c$148$1$29 ==.
                                   1179 ;	Q2-TEMP.c:148: void Timer_Init()
                                   1180 ;	-----------------------------------------
                                   1181 ;	 function Timer_Init
                                   1182 ;	-----------------------------------------
      000281                       1183 _Timer_Init:
                           0001C5  1184 	C$Q2_TEMP.c$155$1$30 ==.
                                   1185 ;	Q2-TEMP.c:155: TH0 = 0x3C;			//For 25ms operation
      000281 75 8C 3C         [24] 1186 	mov	_TH0,#0x3C
                           0001C8  1187 	C$Q2_TEMP.c$156$1$30 ==.
                                   1188 ;	Q2-TEMP.c:156: TL0 = 0xB0;
      000284 75 8A B0         [24] 1189 	mov	_TL0,#0xB0
                           0001CB  1190 	C$Q2_TEMP.c$157$1$30 ==.
                                   1191 ;	Q2-TEMP.c:157: TMOD = (TMOD & 0xF0) | 0x01;  	// Set T/C0 Mode Timer 0 in Mode 1(as 16 bit T/C)
      000287 74 F0            [12] 1192 	mov	a,#0xF0
      000289 55 89            [12] 1193 	anl	a,_TMOD
      00028B 44 01            [12] 1194 	orl	a,#0x01
      00028D F5 89            [12] 1195 	mov	_TMOD,a
                           0001D3  1196 	C$Q2_TEMP.c$158$1$30 ==.
                                   1197 ;	Q2-TEMP.c:158: ET0 = 1;                      	// Enable Timer 0 Interrupts (in IEN0 register)
      00028F D2 A9            [12] 1198 	setb	_ET0
                           0001D5  1199 	C$Q2_TEMP.c$159$1$30 ==.
                                   1200 ;	Q2-TEMP.c:159: TR0 = 1;                      	// Start Timer 0 Running 
      000291 D2 8C            [12] 1201 	setb	_TR0
                           0001D7  1202 	C$Q2_TEMP.c$160$1$30 ==.
                           0001D7  1203 	XG$Timer_Init$0$0 ==.
      000293 22               [24] 1204 	ret
                                   1205 ;------------------------------------------------------------
                                   1206 ;Allocation info for local variables in function 'LCD_Init'
                                   1207 ;------------------------------------------------------------
                           0001D8  1208 	G$LCD_Init$0$0 ==.
                           0001D8  1209 	C$Q2_TEMP.c$166$1$30 ==.
                                   1210 ;	Q2-TEMP.c:166: void LCD_Init()
                                   1211 ;	-----------------------------------------
                                   1212 ;	 function LCD_Init
                                   1213 ;	-----------------------------------------
      000294                       1214 _LCD_Init:
                           0001D8  1215 	C$Q2_TEMP.c$168$1$31 ==.
                                   1216 ;	Q2-TEMP.c:168: sdelay(100);
      000294 90 00 64         [24] 1217 	mov	dptr,#0x0064
      000297 12 03 37         [24] 1218 	lcall	_sdelay
                           0001DE  1219 	C$Q2_TEMP.c$169$1$31 ==.
                                   1220 ;	Q2-TEMP.c:169: LCD_CmdWrite(0x38);   	        // LCD 2lines, 5*7 matrix
      00029A 75 82 38         [24] 1221 	mov	dpl,#0x38
      00029D 12 02 B3         [24] 1222 	lcall	_LCD_CmdWrite
                           0001E4  1223 	C$Q2_TEMP.c$170$1$31 ==.
                                   1224 ;	Q2-TEMP.c:170: LCD_CmdWrite(0x0E);			// Display ON cursor ON  Blinking off
      0002A0 75 82 0E         [24] 1225 	mov	dpl,#0x0E
      0002A3 12 02 B3         [24] 1226 	lcall	_LCD_CmdWrite
                           0001EA  1227 	C$Q2_TEMP.c$171$1$31 ==.
                                   1228 ;	Q2-TEMP.c:171: LCD_CmdWrite(0x01);			// Clear the LCD
      0002A6 75 82 01         [24] 1229 	mov	dpl,#0x01
      0002A9 12 02 B3         [24] 1230 	lcall	_LCD_CmdWrite
                           0001F0  1231 	C$Q2_TEMP.c$172$1$31 ==.
                                   1232 ;	Q2-TEMP.c:172: LCD_CmdWrite(0x80);			// Cursor to First line First Position
      0002AC 75 82 80         [24] 1233 	mov	dpl,#0x80
      0002AF 12 02 B3         [24] 1234 	lcall	_LCD_CmdWrite
                           0001F6  1235 	C$Q2_TEMP.c$173$1$31 ==.
                           0001F6  1236 	XG$LCD_Init$0$0 ==.
      0002B2 22               [24] 1237 	ret
                                   1238 ;------------------------------------------------------------
                                   1239 ;Allocation info for local variables in function 'LCD_CmdWrite'
                                   1240 ;------------------------------------------------------------
                                   1241 ;cmd                       Allocated to registers r7 
                                   1242 ;------------------------------------------------------------
                           0001F7  1243 	G$LCD_CmdWrite$0$0 ==.
                           0001F7  1244 	C$Q2_TEMP.c$180$1$31 ==.
                                   1245 ;	Q2-TEMP.c:180: void LCD_CmdWrite(char cmd)
                                   1246 ;	-----------------------------------------
                                   1247 ;	 function LCD_CmdWrite
                                   1248 ;	-----------------------------------------
      0002B3                       1249 _LCD_CmdWrite:
      0002B3 AF 82            [24] 1250 	mov	r7,dpl
                           0001F9  1251 	C$Q2_TEMP.c$182$1$33 ==.
                                   1252 ;	Q2-TEMP.c:182: LCD_Ready();
      0002B5 C0 07            [24] 1253 	push	ar7
      0002B7 12 03 1A         [24] 1254 	lcall	_LCD_Ready
      0002BA D0 07            [24] 1255 	pop	ar7
                           000200  1256 	C$Q2_TEMP.c$183$1$33 ==.
                                   1257 ;	Q2-TEMP.c:183: LCD_data=cmd;     			// Send the command to LCD
      0002BC 8F A0            [24] 1258 	mov	_P2,r7
                           000202  1259 	C$Q2_TEMP.c$184$1$33 ==.
                                   1260 ;	Q2-TEMP.c:184: LCD_rs=0;         	 		// Select the Command Register by pulling LCD_rs LOW
      0002BE C2 80            [12] 1261 	clr	_P0_0
                           000204  1262 	C$Q2_TEMP.c$185$1$33 ==.
                                   1263 ;	Q2-TEMP.c:185: LCD_rw=0;          			// Select the Write Operation  by pulling RW LOW
      0002C0 C2 81            [12] 1264 	clr	_P0_1
                           000206  1265 	C$Q2_TEMP.c$186$1$33 ==.
                                   1266 ;	Q2-TEMP.c:186: LCD_en=1;          			// Send a High-to-Low Pusle at Enable Pin
      0002C2 D2 82            [12] 1267 	setb	_P0_2
                           000208  1268 	C$Q2_TEMP.c$187$1$33 ==.
                                   1269 ;	Q2-TEMP.c:187: sdelay(5);
      0002C4 90 00 05         [24] 1270 	mov	dptr,#0x0005
      0002C7 12 03 37         [24] 1271 	lcall	_sdelay
                           00020E  1272 	C$Q2_TEMP.c$188$1$33 ==.
                                   1273 ;	Q2-TEMP.c:188: LCD_en=0;
      0002CA C2 82            [12] 1274 	clr	_P0_2
                           000210  1275 	C$Q2_TEMP.c$189$1$33 ==.
                                   1276 ;	Q2-TEMP.c:189: sdelay(5);
      0002CC 90 00 05         [24] 1277 	mov	dptr,#0x0005
      0002CF 12 03 37         [24] 1278 	lcall	_sdelay
                           000216  1279 	C$Q2_TEMP.c$190$1$33 ==.
                           000216  1280 	XG$LCD_CmdWrite$0$0 ==.
      0002D2 22               [24] 1281 	ret
                                   1282 ;------------------------------------------------------------
                                   1283 ;Allocation info for local variables in function 'LCD_DataWrite'
                                   1284 ;------------------------------------------------------------
                                   1285 ;dat                       Allocated to registers 
                                   1286 ;------------------------------------------------------------
                           000217  1287 	G$LCD_DataWrite$0$0 ==.
                           000217  1288 	C$Q2_TEMP.c$197$1$33 ==.
                                   1289 ;	Q2-TEMP.c:197: void LCD_DataWrite( char dat)
                                   1290 ;	-----------------------------------------
                                   1291 ;	 function LCD_DataWrite
                                   1292 ;	-----------------------------------------
      0002D3                       1293 _LCD_DataWrite:
      0002D3 85 82 A0         [24] 1294 	mov	_P2,dpl
                           00021A  1295 	C$Q2_TEMP.c$200$1$35 ==.
                                   1296 ;	Q2-TEMP.c:200: LCD_rs=1;	   			// Select the Data Register by pulling LCD_rs HIGH
      0002D6 D2 80            [12] 1297 	setb	_P0_0
                           00021C  1298 	C$Q2_TEMP.c$201$1$35 ==.
                                   1299 ;	Q2-TEMP.c:201: LCD_rw=0;    	     			// Select the Write Operation by pulling RW LOW
      0002D8 C2 81            [12] 1300 	clr	_P0_1
                           00021E  1301 	C$Q2_TEMP.c$202$1$35 ==.
                                   1302 ;	Q2-TEMP.c:202: LCD_en=1;	   			// Send a High-to-Low Pusle at Enable Pin
      0002DA D2 82            [12] 1303 	setb	_P0_2
                           000220  1304 	C$Q2_TEMP.c$203$1$35 ==.
                                   1305 ;	Q2-TEMP.c:203: sdelay(5);
      0002DC 90 00 05         [24] 1306 	mov	dptr,#0x0005
      0002DF 12 03 37         [24] 1307 	lcall	_sdelay
                           000226  1308 	C$Q2_TEMP.c$204$1$35 ==.
                                   1309 ;	Q2-TEMP.c:204: LCD_en=0;
      0002E2 C2 82            [12] 1310 	clr	_P0_2
                           000228  1311 	C$Q2_TEMP.c$205$1$35 ==.
                                   1312 ;	Q2-TEMP.c:205: sdelay(5);
      0002E4 90 00 05         [24] 1313 	mov	dptr,#0x0005
      0002E7 12 03 37         [24] 1314 	lcall	_sdelay
                           00022E  1315 	C$Q2_TEMP.c$206$1$35 ==.
                           00022E  1316 	XG$LCD_DataWrite$0$0 ==.
      0002EA 22               [24] 1317 	ret
                                   1318 ;------------------------------------------------------------
                                   1319 ;Allocation info for local variables in function 'LCD_StringWrite'
                                   1320 ;------------------------------------------------------------
                                   1321 ;length                    Allocated with name '_LCD_StringWrite_PARM_2'
                                   1322 ;str                       Allocated to registers r5 r6 r7 
                                   1323 ;------------------------------------------------------------
                           00022F  1324 	G$LCD_StringWrite$0$0 ==.
                           00022F  1325 	C$Q2_TEMP.c$212$1$35 ==.
                                   1326 ;	Q2-TEMP.c:212: void LCD_StringWrite( char * str, unsigned char length)
                                   1327 ;	-----------------------------------------
                                   1328 ;	 function LCD_StringWrite
                                   1329 ;	-----------------------------------------
      0002EB                       1330 _LCD_StringWrite:
      0002EB AD 82            [24] 1331 	mov	r5,dpl
      0002ED AE 83            [24] 1332 	mov	r6,dph
      0002EF AF F0            [24] 1333 	mov	r7,b
                           000235  1334 	C$Q2_TEMP.c$214$1$37 ==.
                                   1335 ;	Q2-TEMP.c:214: while(length>0)
      0002F1                       1336 00101$:
      0002F1 E5 14            [12] 1337 	mov	a,_LCD_StringWrite_PARM_2
      0002F3 60 24            [24] 1338 	jz	00104$
                           000239  1339 	C$Q2_TEMP.c$216$2$38 ==.
                                   1340 ;	Q2-TEMP.c:216: LCD_DataWrite(*str);
      0002F5 8D 82            [24] 1341 	mov	dpl,r5
      0002F7 8E 83            [24] 1342 	mov	dph,r6
      0002F9 8F F0            [24] 1343 	mov	b,r7
      0002FB 12 06 26         [24] 1344 	lcall	__gptrget
      0002FE FC               [12] 1345 	mov	r4,a
      0002FF A3               [24] 1346 	inc	dptr
      000300 AD 82            [24] 1347 	mov	r5,dpl
      000302 AE 83            [24] 1348 	mov	r6,dph
      000304 8C 82            [24] 1349 	mov	dpl,r4
      000306 C0 07            [24] 1350 	push	ar7
      000308 C0 06            [24] 1351 	push	ar6
      00030A C0 05            [24] 1352 	push	ar5
      00030C 12 02 D3         [24] 1353 	lcall	_LCD_DataWrite
      00030F D0 05            [24] 1354 	pop	ar5
      000311 D0 06            [24] 1355 	pop	ar6
      000313 D0 07            [24] 1356 	pop	ar7
                           000259  1357 	C$Q2_TEMP.c$217$2$38 ==.
                                   1358 ;	Q2-TEMP.c:217: str++;
                           000259  1359 	C$Q2_TEMP.c$218$2$38 ==.
                                   1360 ;	Q2-TEMP.c:218: length--;
      000315 15 14            [12] 1361 	dec	_LCD_StringWrite_PARM_2
      000317 80 D8            [24] 1362 	sjmp	00101$
      000319                       1363 00104$:
                           00025D  1364 	C$Q2_TEMP.c$220$1$37 ==.
                           00025D  1365 	XG$LCD_StringWrite$0$0 ==.
      000319 22               [24] 1366 	ret
                                   1367 ;------------------------------------------------------------
                                   1368 ;Allocation info for local variables in function 'LCD_Ready'
                                   1369 ;------------------------------------------------------------
                           00025E  1370 	G$LCD_Ready$0$0 ==.
                           00025E  1371 	C$Q2_TEMP.c$227$1$37 ==.
                                   1372 ;	Q2-TEMP.c:227: void LCD_Ready() //*****************del
                                   1373 ;	-----------------------------------------
                                   1374 ;	 function LCD_Ready
                                   1375 ;	-----------------------------------------
      00031A                       1376 _LCD_Ready:
                           00025E  1377 	C$Q2_TEMP.c$229$1$39 ==.
                                   1378 ;	Q2-TEMP.c:229: LCD_data = 0xFF;
      00031A 75 A0 FF         [24] 1379 	mov	_P2,#0xFF
                           000261  1380 	C$Q2_TEMP.c$230$1$39 ==.
                                   1381 ;	Q2-TEMP.c:230: LCD_rs = 0;
      00031D C2 80            [12] 1382 	clr	_P0_0
                           000263  1383 	C$Q2_TEMP.c$231$1$39 ==.
                                   1384 ;	Q2-TEMP.c:231: LCD_rw = 1;
      00031F D2 81            [12] 1385 	setb	_P0_1
                           000265  1386 	C$Q2_TEMP.c$232$1$39 ==.
                                   1387 ;	Q2-TEMP.c:232: LCD_en = 0;
      000321 C2 82            [12] 1388 	clr	_P0_2
                           000267  1389 	C$Q2_TEMP.c$233$1$39 ==.
                                   1390 ;	Q2-TEMP.c:233: sdelay(5);
      000323 90 00 05         [24] 1391 	mov	dptr,#0x0005
      000326 12 03 37         [24] 1392 	lcall	_sdelay
                           00026D  1393 	C$Q2_TEMP.c$234$1$39 ==.
                                   1394 ;	Q2-TEMP.c:234: LCD_en = 1;
      000329 D2 82            [12] 1395 	setb	_P0_2
                           00026F  1396 	C$Q2_TEMP.c$235$1$39 ==.
                                   1397 ;	Q2-TEMP.c:235: while(LCD_busy == 1)
      00032B                       1398 00101$:
      00032B 30 A7 06         [24] 1399 	jnb	_P2_7,00103$
                           000272  1400 	C$Q2_TEMP.c$237$2$40 ==.
                                   1401 ;	Q2-TEMP.c:237: LCD_en = 0;
      00032E C2 82            [12] 1402 	clr	_P0_2
                           000274  1403 	C$Q2_TEMP.c$238$2$40 ==.
                                   1404 ;	Q2-TEMP.c:238: LCD_en = 1;
      000330 D2 82            [12] 1405 	setb	_P0_2
      000332 80 F7            [24] 1406 	sjmp	00101$
      000334                       1407 00103$:
                           000278  1408 	C$Q2_TEMP.c$240$1$39 ==.
                                   1409 ;	Q2-TEMP.c:240: LCD_en = 0;
      000334 C2 82            [12] 1410 	clr	_P0_2
                           00027A  1411 	C$Q2_TEMP.c$241$1$39 ==.
                           00027A  1412 	XG$LCD_Ready$0$0 ==.
      000336 22               [24] 1413 	ret
                                   1414 ;------------------------------------------------------------
                                   1415 ;Allocation info for local variables in function 'sdelay'
                                   1416 ;------------------------------------------------------------
                                   1417 ;delay                     Allocated to registers r6 r7 
                                   1418 ;d                         Allocated to registers r5 
                                   1419 ;------------------------------------------------------------
                           00027B  1420 	G$sdelay$0$0 ==.
                           00027B  1421 	C$Q2_TEMP.c$248$1$39 ==.
                                   1422 ;	Q2-TEMP.c:248: void sdelay(int delay)
                                   1423 ;	-----------------------------------------
                                   1424 ;	 function sdelay
                                   1425 ;	-----------------------------------------
      000337                       1426 _sdelay:
      000337 AE 82            [24] 1427 	mov	r6,dpl
      000339 AF 83            [24] 1428 	mov	r7,dph
                           00027F  1429 	C$Q2_TEMP.c$251$1$42 ==.
                                   1430 ;	Q2-TEMP.c:251: while(delay>0)
      00033B                       1431 00102$:
      00033B C3               [12] 1432 	clr	c
      00033C E4               [12] 1433 	clr	a
      00033D 9E               [12] 1434 	subb	a,r6
      00033E 74 80            [12] 1435 	mov	a,#(0x00 ^ 0x80)
      000340 8F F0            [24] 1436 	mov	b,r7
      000342 63 F0 80         [24] 1437 	xrl	b,#0x80
      000345 95 F0            [12] 1438 	subb	a,b
      000347 50 0F            [24] 1439 	jnc	00108$
                           00028D  1440 	C$Q2_TEMP.c$253$2$43 ==.
                                   1441 ;	Q2-TEMP.c:253: for(d=0;d<5;d++);
      000349 7D 05            [12] 1442 	mov	r5,#0x05
      00034B                       1443 00107$:
      00034B ED               [12] 1444 	mov	a,r5
      00034C 14               [12] 1445 	dec	a
      00034D FC               [12] 1446 	mov	r4,a
      00034E FD               [12] 1447 	mov	r5,a
      00034F 70 FA            [24] 1448 	jnz	00107$
                           000295  1449 	C$Q2_TEMP.c$254$2$43 ==.
                                   1450 ;	Q2-TEMP.c:254: delay--;
      000351 1E               [12] 1451 	dec	r6
      000352 BE FF 01         [24] 1452 	cjne	r6,#0xFF,00124$
      000355 1F               [12] 1453 	dec	r7
      000356                       1454 00124$:
      000356 80 E3            [24] 1455 	sjmp	00102$
      000358                       1456 00108$:
                           00029C  1457 	C$Q2_TEMP.c$256$1$42 ==.
                           00029C  1458 	XG$sdelay$0$0 ==.
      000358 22               [24] 1459 	ret
                                   1460 	.area CSEG    (CODE)
                                   1461 	.area CONST   (CODE)
                           000000  1462 FQ2_TEMP$__str_0$0$0 == .
      000791                       1463 ___str_0:
      000791 54 65 6D 70 65 72 3A  1464 	.ascii "Temper:  xxxx C"
             20 20 78 78 78 78 20
             43
      0007A0 00                    1465 	.db 0x00
                                   1466 	.area XINIT   (CODE)
                                   1467 	.area CABS    (ABS,CODE)
