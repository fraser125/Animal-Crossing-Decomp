.include "macros.inc"

.section .text

.org 0x8005E218

.global guOrtho
guOrtho:
/* 8005E218 0005B178  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8005E21C 0005B17C  7C 08 02 A6 */	mflr r0
/* 8005E220 0005B180  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8005E224 0005B184  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8005E228 0005B188  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 8005E22C 0005B18C  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 8005E230 0005B190  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, qr0
/* 8005E234 0005B194  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 8005E238 0005B198  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, qr0
/* 8005E23C 0005B19C  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 8005E240 0005B1A0  F3 81 00 98 */	psq_st f28, 152(r1), 0, qr0
/* 8005E244 0005B1A4  DB 61 00 80 */	stfd f27, 0x80(r1)
/* 8005E248 0005B1A8  F3 61 00 88 */	psq_st f27, 136(r1), 0, qr0
/* 8005E24C 0005B1AC  DB 41 00 70 */	stfd f26, 0x70(r1)
/* 8005E250 0005B1B0  F3 41 00 78 */	psq_st f26, 120(r1), 0, qr0
/* 8005E254 0005B1B4  DB 21 00 60 */	stfd f25, 0x60(r1)
/* 8005E258 0005B1B8  F3 21 00 68 */	psq_st f25, 104(r1), 0, qr0
/* 8005E25C 0005B1BC  DB 01 00 50 */	stfd f24, 0x50(r1)
/* 8005E260 0005B1C0  F3 01 00 58 */	psq_st f24, 88(r1), 0, qr0
/* 8005E264 0005B1C4  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8005E268 0005B1C8  FF 40 08 90 */	fmr f26, f1
/* 8005E26C 0005B1CC  7C 7F 1B 78 */	mr r31, r3
/* 8005E270 0005B1D0  FF 00 10 90 */	fmr f24, f2
/* 8005E274 0005B1D4  38 61 00 08 */	addi r3, r1, 8
/* 8005E278 0005B1D8  FF 60 18 90 */	fmr f27, f3
/* 8005E27C 0005B1DC  FF 80 20 90 */	fmr f28, f4
/* 8005E280 0005B1E0  FF A0 28 90 */	fmr f29, f5
/* 8005E284 0005B1E4  FF C0 30 90 */	fmr f30, f6
/* 8005E288 0005B1E8  FF E0 38 90 */	fmr f31, f7
/* 8005E28C 0005B1EC  4B FF FD 19 */	bl guMtxIdentF
/* 8005E290 0005B1F0  ED 58 D0 28 */	fsubs f10, f24, f26
/* 8005E294 0005B1F4  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 8005E298 0005B1F8  EF 3C D8 28 */	fsubs f25, f28, f27
/* 8005E29C 0005B1FC  C0 02 85 E8 */	lfs f0, @279-_SDA2_BASE_(r2)
/* 8005E2A0 0005B200  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8005E2A4 0005B204  EC F8 D0 2A */	fadds f7, f24, f26
/* 8005E2A8 0005B208  EF 40 50 24 */	fdivs f26, f0, f10
/* 8005E2AC 0005B20C  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8005E2B0 0005B210  C1 02 85 F0 */	lfs f8, @281-_SDA2_BASE_(r2)
/* 8005E2B4 0005B214  7F E4 FB 78 */	mr r4, r31
/* 8005E2B8 0005B218  C1 22 85 EC */	lfs f9, @280-_SDA2_BASE_(r2)
/* 8005E2BC 0005B21C  38 61 00 08 */	addi r3, r1, 8
/* 8005E2C0 0005B220  ED A0 C8 24 */	fdivs f13, f0, f25
/* 8005E2C4 0005B224  D3 41 00 08 */	stfs f26, 8(r1)
/* 8005E2C8 0005B228  D1 01 00 44 */	stfs f8, 0x44(r1)
/* 8005E2CC 0005B22C  EC 01 07 F2 */	fmuls f0, f1, f31
/* 8005E2D0 0005B230  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8005E2D4 0005B234  EC 85 07 F2 */	fmuls f4, f5, f31
/* 8005E2D8 0005B238  D1 A1 00 1C */	stfs f13, 0x1c(r1)
/* 8005E2DC 0005B23C  EC 43 07 F2 */	fmuls f2, f3, f31
/* 8005E2E0 0005B240  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 8005E2E4 0005B244  EF 1E E8 28 */	fsubs f24, f30, f29
/* 8005E2E8 0005B248  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8005E2EC 0005B24C  EC 01 07 F2 */	fmuls f0, f1, f31
/* 8005E2F0 0005B250  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8005E2F4 0005B254  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8005E2F8 0005B258  EC 43 07 F2 */	fmuls f2, f3, f31
/* 8005E2FC 0005B25C  EC DC D8 2A */	fadds f6, f28, f27
/* 8005E300 0005B260  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 8005E304 0005B264  FC 80 38 50 */	fneg f4, f7
/* 8005E308 0005B268  ED 89 C0 24 */	fdivs f12, f9, f24
/* 8005E30C 0005B26C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8005E310 0005B270  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8005E314 0005B274  EC 01 07 F2 */	fmuls f0, f1, f31
/* 8005E318 0005B278  D1 81 00 30 */	stfs f12, 0x30(r1)
/* 8005E31C 0005B27C  EC BE E8 2A */	fadds f5, f30, f29
/* 8005E320 0005B280  ED 64 50 24 */	fdivs f11, f4, f10
/* 8005E324 0005B284  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8005E328 0005B288  FC 20 28 50 */	fneg f1, f5
/* 8005E32C 0005B28C  D1 61 00 38 */	stfs f11, 0x38(r1)
/* 8005E330 0005B290  FC 60 30 50 */	fneg f3, f6
/* 8005E334 0005B294  FC E0 D0 18 */	frsp f7, f26
/* 8005E338 0005B298  ED 21 C0 24 */	fdivs f9, f1, f24
/* 8005E33C 0005B29C  ED 43 C8 24 */	fdivs f10, f3, f25
/* 8005E340 0005B2A0  D1 21 00 40 */	stfs f9, 0x40(r1)
/* 8005E344 0005B2A4  EC C7 07 F2 */	fmuls f6, f7, f31
/* 8005E348 0005B2A8  C0 E1 00 18 */	lfs f7, 0x18(r1)
/* 8005E34C 0005B2AC  FC A0 68 18 */	frsp f5, f13
/* 8005E350 0005B2B0  D1 41 00 3C */	stfs f10, 0x3c(r1)
/* 8005E354 0005B2B4  FC 60 60 18 */	frsp f3, f12
/* 8005E358 0005B2B8  D0 C1 00 08 */	stfs f6, 8(r1)
/* 8005E35C 0005B2BC  EC 85 07 F2 */	fmuls f4, f5, f31
/* 8005E360 0005B2C0  C0 A1 00 2C */	lfs f5, 0x2c(r1)
/* 8005E364 0005B2C4  EC C7 07 F2 */	fmuls f6, f7, f31
/* 8005E368 0005B2C8  C0 E1 00 28 */	lfs f7, 0x28(r1)
/* 8005E36C 0005B2CC  EC 43 07 F2 */	fmuls f2, f3, f31
/* 8005E370 0005B2D0  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 8005E374 0005B2D4  EC 85 07 F2 */	fmuls f4, f5, f31
/* 8005E378 0005B2D8  FC 20 40 18 */	frsp f1, f8
/* 8005E37C 0005B2DC  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 8005E380 0005B2E0  EC C7 07 F2 */	fmuls f6, f7, f31
/* 8005E384 0005B2E4  FC A0 50 18 */	frsp f5, f10
/* 8005E388 0005B2E8  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 8005E38C 0005B2EC  EC 01 07 F2 */	fmuls f0, f1, f31
/* 8005E390 0005B2F0  FC E0 58 18 */	frsp f7, f11
/* 8005E394 0005B2F4  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 8005E398 0005B2F8  EC 85 07 F2 */	fmuls f4, f5, f31
/* 8005E39C 0005B2FC  FC 60 48 18 */	frsp f3, f9
/* 8005E3A0 0005B300  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8005E3A4 0005B304  EC C7 07 F2 */	fmuls f6, f7, f31
/* 8005E3A8 0005B308  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8005E3AC 0005B30C  EC 43 07 F2 */	fmuls f2, f3, f31
/* 8005E3B0 0005B310  D0 C1 00 38 */	stfs f6, 0x38(r1)
/* 8005E3B4 0005B314  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 8005E3B8 0005B318  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8005E3BC 0005B31C  4B FF FB 3D */	bl guMtxF2L
/* 8005E3C0 0005B320  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 8005E3C4 0005B324  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8005E3C8 0005B328  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, qr0
/* 8005E3CC 0005B32C  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 8005E3D0 0005B330  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, qr0
/* 8005E3D4 0005B334  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 8005E3D8 0005B338  E3 81 00 98 */	psq_l f28, 152(r1), 0, qr0
/* 8005E3DC 0005B33C  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 8005E3E0 0005B340  E3 61 00 88 */	psq_l f27, 136(r1), 0, qr0
/* 8005E3E4 0005B344  CB 61 00 80 */	lfd f27, 0x80(r1)
/* 8005E3E8 0005B348  E3 41 00 78 */	psq_l f26, 120(r1), 0, qr0
/* 8005E3EC 0005B34C  CB 41 00 70 */	lfd f26, 0x70(r1)
/* 8005E3F0 0005B350  E3 21 00 68 */	psq_l f25, 104(r1), 0, qr0
/* 8005E3F4 0005B354  CB 21 00 60 */	lfd f25, 0x60(r1)
/* 8005E3F8 0005B358  E3 01 00 58 */	psq_l f24, 88(r1), 0, qr0
/* 8005E3FC 0005B35C  CB 01 00 50 */	lfd f24, 0x50(r1)
/* 8005E400 0005B360  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8005E404 0005B364  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8005E408 0005B368  7C 08 03 A6 */	mtlr r0
/* 8005E40C 0005B36C  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8005E410 0005B370  4E 80 00 20 */	blr 
