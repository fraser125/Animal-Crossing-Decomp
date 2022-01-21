.include "macros.inc"

.section .text

.org 0x8005D184

.global guLookAtF
guLookAtF:
/* 8005D184 0005A0E4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8005D188 0005A0E8  7C 08 02 A6 */	mflr r0
/* 8005D18C 0005A0EC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8005D190 0005A0F0  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 8005D194 0005A0F4  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 8005D198 0005A0F8  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 8005D19C 0005A0FC  F3 C1 00 98 */	psq_st f30, 152(r1), 0, qr0
/* 8005D1A0 0005A100  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 8005D1A4 0005A104  F3 A1 00 88 */	psq_st f29, 136(r1), 0, qr0
/* 8005D1A8 0005A108  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 8005D1AC 0005A10C  F3 81 00 78 */	psq_st f28, 120(r1), 0, qr0
/* 8005D1B0 0005A110  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 8005D1B4 0005A114  F3 61 00 68 */	psq_st f27, 104(r1), 0, qr0
/* 8005D1B8 0005A118  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 8005D1BC 0005A11C  F3 41 00 58 */	psq_st f26, 88(r1), 0, qr0
/* 8005D1C0 0005A120  DB 21 00 40 */	stfd f25, 0x40(r1)
/* 8005D1C4 0005A124  F3 21 00 48 */	psq_st f25, 72(r1), 0, qr0
/* 8005D1C8 0005A128  DB 01 00 30 */	stfd f24, 0x30(r1)
/* 8005D1CC 0005A12C  F3 01 00 38 */	psq_st f24, 56(r1), 0, qr0
/* 8005D1D0 0005A130  DA E1 00 20 */	stfd f23, 0x20(r1)
/* 8005D1D4 0005A134  F2 E1 00 28 */	psq_st f23, 40(r1), 0, qr0
/* 8005D1D8 0005A138  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8005D1DC 0005A13C  FF 40 08 90 */	fmr f26, f1
/* 8005D1E0 0005A140  C3 E1 00 B8 */	lfs f31, 0xb8(r1)
/* 8005D1E4 0005A144  FF 60 10 90 */	fmr f27, f2
/* 8005D1E8 0005A148  7C 7F 1B 78 */	mr r31, r3
/* 8005D1EC 0005A14C  FF 80 18 90 */	fmr f28, f3
/* 8005D1F0 0005A150  FE E0 20 90 */	fmr f23, f4
/* 8005D1F4 0005A154  FF 00 28 90 */	fmr f24, f5
/* 8005D1F8 0005A158  FF 20 30 90 */	fmr f25, f6
/* 8005D1FC 0005A15C  FF A0 38 90 */	fmr f29, f7
/* 8005D200 0005A160  FF C0 40 90 */	fmr f30, f8
/* 8005D204 0005A164  48 00 0D A1 */	bl guMtxIdentF
/* 8005D208 0005A168  EC 37 D0 28 */	fsubs f1, f23, f26
/* 8005D20C 0005A16C  C0 02 85 58 */	lfs f0, @288-_SDA2_BASE_(r2)
/* 8005D210 0005A170  EC 58 D8 28 */	fsubs f2, f24, f27
/* 8005D214 0005A174  EC 79 E0 28 */	fsubs f3, f25, f28
/* 8005D218 0005A178  EC A1 00 72 */	fmuls f5, f1, f1
/* 8005D21C 0005A17C  EC 82 00 B2 */	fmuls f4, f2, f2
/* 8005D220 0005A180  EC C3 00 F2 */	fmuls f6, f3, f3
/* 8005D224 0005A184  EC 85 20 2A */	fadds f4, f5, f4
/* 8005D228 0005A188  EC E6 20 2A */	fadds f7, f6, f4
/* 8005D22C 0005A18C  FC 07 00 40 */	fcmpo cr0, f7, f0
/* 8005D230 0005A190  40 81 00 5C */	ble lbl_8005D28C
/* 8005D234 0005A194  FC 80 38 34 */	frsqrte f4, f7
/* 8005D238 0005A198  C8 C2 85 60 */	lfd f6, @289-_SDA2_BASE_(r2)
/* 8005D23C 0005A19C  C8 A2 85 68 */	lfd f5, @290-_SDA2_BASE_(r2)
/* 8005D240 0005A1A0  FC 04 01 32 */	fmul f0, f4, f4
/* 8005D244 0005A1A4  FC 86 01 32 */	fmul f4, f6, f4
/* 8005D248 0005A1A8  FC 07 00 32 */	fmul f0, f7, f0
/* 8005D24C 0005A1AC  FC 05 00 28 */	fsub f0, f5, f0
/* 8005D250 0005A1B0  FC 84 00 32 */	fmul f4, f4, f0
/* 8005D254 0005A1B4  FC 04 01 32 */	fmul f0, f4, f4
/* 8005D258 0005A1B8  FC 86 01 32 */	fmul f4, f6, f4
/* 8005D25C 0005A1BC  FC 07 00 32 */	fmul f0, f7, f0
/* 8005D260 0005A1C0  FC 05 00 28 */	fsub f0, f5, f0
/* 8005D264 0005A1C4  FC 84 00 32 */	fmul f4, f4, f0
/* 8005D268 0005A1C8  FC 04 01 32 */	fmul f0, f4, f4
/* 8005D26C 0005A1CC  FC 86 01 32 */	fmul f4, f6, f4
/* 8005D270 0005A1D0  FC 07 00 32 */	fmul f0, f7, f0
/* 8005D274 0005A1D4  FC 05 00 28 */	fsub f0, f5, f0
/* 8005D278 0005A1D8  FC 04 00 32 */	fmul f0, f4, f0
/* 8005D27C 0005A1DC  FC 07 00 32 */	fmul f0, f7, f0
/* 8005D280 0005A1E0  FC 00 00 18 */	frsp f0, f0
/* 8005D284 0005A1E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8005D288 0005A1E8  C0 E1 00 10 */	lfs f7, 0x10(r1)
lbl_8005D28C:
/* 8005D28C 0005A1EC  C0 82 85 70 */	lfs f4, @291-_SDA2_BASE_(r2)
/* 8005D290 0005A1F0  C0 02 85 58 */	lfs f0, @288-_SDA2_BASE_(r2)
/* 8005D294 0005A1F4  EC 84 38 24 */	fdivs f4, f4, f7
/* 8005D298 0005A1F8  EC 21 01 32 */	fmuls f1, f1, f4
/* 8005D29C 0005A1FC  EC 42 01 32 */	fmuls f2, f2, f4
/* 8005D2A0 0005A200  EC 63 01 32 */	fmuls f3, f3, f4
/* 8005D2A4 0005A204  EC DF 00 72 */	fmuls f6, f31, f1
/* 8005D2A8 0005A208  EC 9F 00 B2 */	fmuls f4, f31, f2
/* 8005D2AC 0005A20C  EC FE 00 F2 */	fmuls f7, f30, f3
/* 8005D2B0 0005A210  EC BD 00 F2 */	fmuls f5, f29, f3
/* 8005D2B4 0005A214  ED 3D 00 B2 */	fmuls f9, f29, f2
/* 8005D2B8 0005A218  EC 87 20 28 */	fsubs f4, f7, f4
/* 8005D2BC 0005A21C  EC A6 28 28 */	fsubs f5, f6, f5
/* 8005D2C0 0005A220  EC DE 00 72 */	fmuls f6, f30, f1
/* 8005D2C4 0005A224  ED 04 01 32 */	fmuls f8, f4, f4
/* 8005D2C8 0005A228  EC E5 01 72 */	fmuls f7, f5, f5
/* 8005D2CC 0005A22C  EC C9 30 28 */	fsubs f6, f9, f6
/* 8005D2D0 0005A230  EC E8 38 2A */	fadds f7, f8, f7
/* 8005D2D4 0005A234  ED 06 01 B2 */	fmuls f8, f6, f6
/* 8005D2D8 0005A238  ED 48 38 2A */	fadds f10, f8, f7
/* 8005D2DC 0005A23C  FC 0A 00 40 */	fcmpo cr0, f10, f0
/* 8005D2E0 0005A240  40 81 00 5C */	ble lbl_8005D33C
/* 8005D2E4 0005A244  FC E0 50 34 */	frsqrte f7, f10
/* 8005D2E8 0005A248  C9 22 85 60 */	lfd f9, @289-_SDA2_BASE_(r2)
/* 8005D2EC 0005A24C  C9 02 85 68 */	lfd f8, @290-_SDA2_BASE_(r2)
/* 8005D2F0 0005A250  FC 07 01 F2 */	fmul f0, f7, f7
/* 8005D2F4 0005A254  FC E9 01 F2 */	fmul f7, f9, f7
/* 8005D2F8 0005A258  FC 0A 00 32 */	fmul f0, f10, f0
/* 8005D2FC 0005A25C  FC 08 00 28 */	fsub f0, f8, f0
/* 8005D300 0005A260  FC E7 00 32 */	fmul f7, f7, f0
/* 8005D304 0005A264  FC 07 01 F2 */	fmul f0, f7, f7
/* 8005D308 0005A268  FC E9 01 F2 */	fmul f7, f9, f7
/* 8005D30C 0005A26C  FC 0A 00 32 */	fmul f0, f10, f0
/* 8005D310 0005A270  FC 08 00 28 */	fsub f0, f8, f0
/* 8005D314 0005A274  FC E7 00 32 */	fmul f7, f7, f0
/* 8005D318 0005A278  FC 07 01 F2 */	fmul f0, f7, f7
/* 8005D31C 0005A27C  FC E9 01 F2 */	fmul f7, f9, f7
/* 8005D320 0005A280  FC 0A 00 32 */	fmul f0, f10, f0
/* 8005D324 0005A284  FC 08 00 28 */	fsub f0, f8, f0
/* 8005D328 0005A288  FC 07 00 32 */	fmul f0, f7, f0
/* 8005D32C 0005A28C  FC 0A 00 32 */	fmul f0, f10, f0
/* 8005D330 0005A290  FC 00 00 18 */	frsp f0, f0
/* 8005D334 0005A294  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8005D338 0005A298  C1 41 00 0C */	lfs f10, 0xc(r1)
lbl_8005D33C:
/* 8005D33C 0005A29C  C0 E2 85 74 */	lfs f7, @292-_SDA2_BASE_(r2)
/* 8005D340 0005A2A0  C0 02 85 58 */	lfs f0, @288-_SDA2_BASE_(r2)
/* 8005D344 0005A2A4  EC E7 50 24 */	fdivs f7, f7, f10
/* 8005D348 0005A2A8  EC 84 01 F2 */	fmuls f4, f4, f7
/* 8005D34C 0005A2AC  EC A5 01 F2 */	fmuls f5, f5, f7
/* 8005D350 0005A2B0  EC C6 01 F2 */	fmuls f6, f6, f7
/* 8005D354 0005A2B4  ED 03 01 32 */	fmuls f8, f3, f4
/* 8005D358 0005A2B8  ED 23 01 72 */	fmuls f9, f3, f5
/* 8005D35C 0005A2BC  ED 62 01 B2 */	fmuls f11, f2, f6
/* 8005D360 0005A2C0  EC E1 01 B2 */	fmuls f7, f1, f6
/* 8005D364 0005A2C4  ED 41 01 72 */	fmuls f10, f1, f5
/* 8005D368 0005A2C8  EF AB 48 28 */	fsubs f29, f11, f9
/* 8005D36C 0005A2CC  EF C8 38 28 */	fsubs f30, f8, f7
/* 8005D370 0005A2D0  ED 22 01 32 */	fmuls f9, f2, f4
/* 8005D374 0005A2D4  ED 1D 07 72 */	fmuls f8, f29, f29
/* 8005D378 0005A2D8  EC FE 07 B2 */	fmuls f7, f30, f30
/* 8005D37C 0005A2DC  EF EA 48 28 */	fsubs f31, f10, f9
/* 8005D380 0005A2E0  EC E8 38 2A */	fadds f7, f8, f7
/* 8005D384 0005A2E4  ED 1F 07 F2 */	fmuls f8, f31, f31
/* 8005D388 0005A2E8  ED 48 38 2A */	fadds f10, f8, f7
/* 8005D38C 0005A2EC  FC 0A 00 40 */	fcmpo cr0, f10, f0
/* 8005D390 0005A2F0  40 81 00 5C */	ble lbl_8005D3EC
/* 8005D394 0005A2F4  FC E0 50 34 */	frsqrte f7, f10
/* 8005D398 0005A2F8  C9 22 85 60 */	lfd f9, @289-_SDA2_BASE_(r2)
/* 8005D39C 0005A2FC  C9 02 85 68 */	lfd f8, @290-_SDA2_BASE_(r2)
/* 8005D3A0 0005A300  FC 07 01 F2 */	fmul f0, f7, f7
/* 8005D3A4 0005A304  FC E9 01 F2 */	fmul f7, f9, f7
/* 8005D3A8 0005A308  FC 0A 00 32 */	fmul f0, f10, f0
/* 8005D3AC 0005A30C  FC 08 00 28 */	fsub f0, f8, f0
/* 8005D3B0 0005A310  FC E7 00 32 */	fmul f7, f7, f0
/* 8005D3B4 0005A314  FC 07 01 F2 */	fmul f0, f7, f7
/* 8005D3B8 0005A318  FC E9 01 F2 */	fmul f7, f9, f7
/* 8005D3BC 0005A31C  FC 0A 00 32 */	fmul f0, f10, f0
/* 8005D3C0 0005A320  FC 08 00 28 */	fsub f0, f8, f0
/* 8005D3C4 0005A324  FC E7 00 32 */	fmul f7, f7, f0
/* 8005D3C8 0005A328  FC 07 01 F2 */	fmul f0, f7, f7
/* 8005D3CC 0005A32C  FC E9 01 F2 */	fmul f7, f9, f7
/* 8005D3D0 0005A330  FC 0A 00 32 */	fmul f0, f10, f0
/* 8005D3D4 0005A334  FC 08 00 28 */	fsub f0, f8, f0
/* 8005D3D8 0005A338  FC 07 00 32 */	fmul f0, f7, f0
/* 8005D3DC 0005A33C  FC 0A 00 32 */	fmul f0, f10, f0
/* 8005D3E0 0005A340  FC 00 00 18 */	frsp f0, f0
/* 8005D3E4 0005A344  D0 01 00 08 */	stfs f0, 8(r1)
/* 8005D3E8 0005A348  C1 41 00 08 */	lfs f10, 8(r1)
lbl_8005D3EC:
/* 8005D3EC 0005A34C  C0 02 85 74 */	lfs f0, @292-_SDA2_BASE_(r2)
/* 8005D3F0 0005A350  ED 1A 01 32 */	fmuls f8, f26, f4
/* 8005D3F4 0005A354  EC FB 01 72 */	fmuls f7, f27, f5
/* 8005D3F8 0005A358  D0 9F 00 00 */	stfs f4, 0(r31)
/* 8005D3FC 0005A35C  ED 40 50 24 */	fdivs f10, f0, f10
/* 8005D400 0005A360  C0 82 85 58 */	lfs f4, @288-_SDA2_BASE_(r2)
/* 8005D404 0005A364  D0 BF 00 10 */	stfs f5, 0x10(r31)
/* 8005D408 0005A368  D0 DF 00 20 */	stfs f6, 0x20(r31)
/* 8005D40C 0005A36C  EF BD 02 B2 */	fmuls f29, f29, f10
/* 8005D410 0005A370  EF DE 02 B2 */	fmuls f30, f30, f10
/* 8005D414 0005A374  ED 3C 01 B2 */	fmuls f9, f28, f6
/* 8005D418 0005A378  EC A8 38 2A */	fadds f5, f8, f7
/* 8005D41C 0005A37C  EF FF 02 B2 */	fmuls f31, f31, f10
/* 8005D420 0005A380  EC DA 07 72 */	fmuls f6, f26, f29
/* 8005D424 0005A384  EC E9 28 2A */	fadds f7, f9, f5
/* 8005D428 0005A388  EC BB 07 B2 */	fmuls f5, f27, f30
/* 8005D42C 0005A38C  ED 1C 07 F2 */	fmuls f8, f28, f31
/* 8005D430 0005A390  FD 20 38 50 */	fneg f9, f7
/* 8005D434 0005A394  EC E6 28 2A */	fadds f7, f6, f5
/* 8005D438 0005A398  EC DA 00 72 */	fmuls f6, f26, f1
/* 8005D43C 0005A39C  D1 3F 00 30 */	stfs f9, 0x30(r31)
/* 8005D440 0005A3A0  EC BB 00 B2 */	fmuls f5, f27, f2
/* 8005D444 0005A3A4  ED 08 38 2A */	fadds f8, f8, f7
/* 8005D448 0005A3A8  D3 BF 00 04 */	stfs f29, 4(r31)
/* 8005D44C 0005A3AC  EC FC 00 F2 */	fmuls f7, f28, f3
/* 8005D450 0005A3B0  EC A6 28 2A */	fadds f5, f6, f5
/* 8005D454 0005A3B4  D3 DF 00 14 */	stfs f30, 0x14(r31)
/* 8005D458 0005A3B8  FC C0 40 50 */	fneg f6, f8
/* 8005D45C 0005A3BC  D3 FF 00 24 */	stfs f31, 0x24(r31)
/* 8005D460 0005A3C0  EC A7 28 2A */	fadds f5, f7, f5
/* 8005D464 0005A3C4  D0 DF 00 34 */	stfs f6, 0x34(r31)
/* 8005D468 0005A3C8  FC A0 28 50 */	fneg f5, f5
/* 8005D46C 0005A3CC  D0 3F 00 08 */	stfs f1, 8(r31)
/* 8005D470 0005A3D0  D0 5F 00 18 */	stfs f2, 0x18(r31)
/* 8005D474 0005A3D4  D0 7F 00 28 */	stfs f3, 0x28(r31)
/* 8005D478 0005A3D8  D0 BF 00 38 */	stfs f5, 0x38(r31)
/* 8005D47C 0005A3DC  D0 9F 00 0C */	stfs f4, 0xc(r31)
/* 8005D480 0005A3E0  D0 9F 00 1C */	stfs f4, 0x1c(r31)
/* 8005D484 0005A3E4  D0 9F 00 2C */	stfs f4, 0x2c(r31)
/* 8005D488 0005A3E8  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8005D48C 0005A3EC  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 8005D490 0005A3F0  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8005D494 0005A3F4  E3 C1 00 98 */	psq_l f30, 152(r1), 0, qr0
/* 8005D498 0005A3F8  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 8005D49C 0005A3FC  E3 A1 00 88 */	psq_l f29, 136(r1), 0, qr0
/* 8005D4A0 0005A400  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 8005D4A4 0005A404  E3 81 00 78 */	psq_l f28, 120(r1), 0, qr0
/* 8005D4A8 0005A408  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 8005D4AC 0005A40C  E3 61 00 68 */	psq_l f27, 104(r1), 0, qr0
/* 8005D4B0 0005A410  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 8005D4B4 0005A414  E3 41 00 58 */	psq_l f26, 88(r1), 0, qr0
/* 8005D4B8 0005A418  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 8005D4BC 0005A41C  E3 21 00 48 */	psq_l f25, 72(r1), 0, qr0
/* 8005D4C0 0005A420  CB 21 00 40 */	lfd f25, 0x40(r1)
/* 8005D4C4 0005A424  E3 01 00 38 */	psq_l f24, 56(r1), 0, qr0
/* 8005D4C8 0005A428  CB 01 00 30 */	lfd f24, 0x30(r1)
/* 8005D4CC 0005A42C  E2 E1 00 28 */	psq_l f23, 40(r1), 0, qr0
/* 8005D4D0 0005A430  CA E1 00 20 */	lfd f23, 0x20(r1)
/* 8005D4D4 0005A434  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8005D4D8 0005A438  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8005D4DC 0005A43C  7C 08 03 A6 */	mtlr r0
/* 8005D4E0 0005A440  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8005D4E4 0005A444  4E 80 00 20 */	blr 

.global guLookAt
guLookAt:
/* 8005D4E8 0005A448  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8005D4EC 0005A44C  7C 08 02 A6 */	mflr r0
/* 8005D4F0 0005A450  90 01 00 64 */	stw r0, 0x64(r1)
/* 8005D4F4 0005A454  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8005D4F8 0005A458  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8005D4FC 0005A45C  7C 7F 1B 78 */	mr r31, r3
/* 8005D500 0005A460  38 61 00 10 */	addi r3, r1, 0x10
/* 8005D504 0005A464  D0 01 00 08 */	stfs f0, 8(r1)
/* 8005D508 0005A468  4B FF FC 7D */	bl guLookAtF
/* 8005D50C 0005A46C  7F E4 FB 78 */	mr r4, r31
/* 8005D510 0005A470  38 61 00 10 */	addi r3, r1, 0x10
/* 8005D514 0005A474  48 00 09 E5 */	bl guMtxF2L
/* 8005D518 0005A478  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8005D51C 0005A47C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8005D520 0005A480  7C 08 03 A6 */	mtlr r0
/* 8005D524 0005A484  38 21 00 60 */	addi r1, r1, 0x60
/* 8005D528 0005A488  4E 80 00 20 */	blr 