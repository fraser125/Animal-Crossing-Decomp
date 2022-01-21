.include "macros.inc"

.section .text

.org 0x800A0134

.global __ieee754_atan2
__ieee754_atan2:
/* 800A0134 0009D094  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800A0138 0009D098  7C 08 02 A6 */	mflr r0
/* 800A013C 0009D09C  3C 60 7F F0 */	lis r3, 0x7ff0
/* 800A0140 0009D0A0  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 800A0144 0009D0A4  81 01 00 14 */	lwz r8, 0x14(r1)
/* 800A0148 0009D0A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 800A014C 0009D0AC  7C 08 00 D0 */	neg r0, r8
/* 800A0150 0009D0B0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 800A0154 0009D0B4  7D 00 03 78 */	or r0, r8, r0
/* 800A0158 0009D0B8  D8 21 00 08 */	stfd f1, 8(r1)
/* 800A015C 0009D0BC  54 86 00 7E */	clrlwi r6, r4, 1
/* 800A0160 0009D0C0  54 00 0F FE */	srwi r0, r0, 0x1f
/* 800A0164 0009D0C4  80 A1 00 08 */	lwz r5, 8(r1)
/* 800A0168 0009D0C8  7C C0 03 78 */	or r0, r6, r0
/* 800A016C 0009D0CC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800A0170 0009D0D0  7C 00 18 40 */	cmplw r0, r3
/* 800A0174 0009D0D4  81 21 00 0C */	lwz r9, 0xc(r1)
/* 800A0178 0009D0D8  54 A7 00 7E */	clrlwi r7, r5, 1
/* 800A017C 0009D0DC  41 81 00 1C */	bgt lbl_800A0198
/* 800A0180 0009D0E0  7C 09 00 D0 */	neg r0, r9
/* 800A0184 0009D0E4  7D 20 03 78 */	or r0, r9, r0
/* 800A0188 0009D0E8  54 00 0F FE */	srwi r0, r0, 0x1f
/* 800A018C 0009D0EC  7C E0 03 78 */	or r0, r7, r0
/* 800A0190 0009D0F0  7C 00 18 40 */	cmplw r0, r3
/* 800A0194 0009D0F4  40 81 00 14 */	ble lbl_800A01A8
lbl_800A0198:
/* 800A0198 0009D0F8  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 800A019C 0009D0FC  C8 01 00 08 */	lfd f0, 8(r1)
/* 800A01A0 0009D100  FC 21 00 2A */	fadd f1, f1, f0
/* 800A01A4 0009D104  48 00 02 0C */	b lbl_800A03B0
lbl_800A01A8:
/* 800A01A8 0009D108  3C 04 C0 10 */	addis r0, r4, 0xc010
/* 800A01AC 0009D10C  7C 00 43 79 */	or. r0, r0, r8
/* 800A01B0 0009D110  40 82 00 0C */	bne lbl_800A01BC
/* 800A01B4 0009D114  48 00 15 99 */	bl atan
/* 800A01B8 0009D118  48 00 01 F8 */	b lbl_800A03B0
lbl_800A01BC:
/* 800A01BC 0009D11C  7C E0 4B 79 */	or. r0, r7, r9
/* 800A01C0 0009D120  54 80 17 BC */	rlwinm r0, r4, 2, 0x1e, 0x1e
/* 800A01C4 0009D124  7C 1F 03 78 */	mr r31, r0
/* 800A01C8 0009D128  50 BF 0F FE */	rlwimi r31, r5, 1, 0x1f, 0x1f
/* 800A01CC 0009D12C  40 82 00 3C */	bne lbl_800A0208
/* 800A01D0 0009D130  2C 1F 00 02 */	cmpwi r31, 2
/* 800A01D4 0009D134  41 82 00 24 */	beq lbl_800A01F8
/* 800A01D8 0009D138  40 80 00 10 */	bge lbl_800A01E8
/* 800A01DC 0009D13C  2C 1F 00 00 */	cmpwi r31, 0
/* 800A01E0 0009D140  40 80 01 D0 */	bge lbl_800A03B0
/* 800A01E4 0009D144  48 00 00 24 */	b lbl_800A0208
lbl_800A01E8:
/* 800A01E8 0009D148  2C 1F 00 04 */	cmpwi r31, 4
/* 800A01EC 0009D14C  40 80 00 1C */	bge lbl_800A0208
/* 800A01F0 0009D150  48 00 00 10 */	b lbl_800A0200
/* 800A01F4 0009D154  48 00 01 BC */	b lbl_800A03B0
lbl_800A01F8:
/* 800A01F8 0009D158  C8 22 89 48 */	lfd f1, @146-_SDA2_BASE_(r2)
/* 800A01FC 0009D15C  48 00 01 B4 */	b lbl_800A03B0
lbl_800A0200:
/* 800A0200 0009D160  C8 22 89 50 */	lfd f1, @147-_SDA2_BASE_(r2)
/* 800A0204 0009D164  48 00 01 AC */	b lbl_800A03B0
lbl_800A0208:
/* 800A0208 0009D168  7C C0 43 79 */	or. r0, r6, r8
/* 800A020C 0009D16C  40 82 00 1C */	bne lbl_800A0228
/* 800A0210 0009D170  2C 05 00 00 */	cmpwi r5, 0
/* 800A0214 0009D174  40 80 00 0C */	bge lbl_800A0220
/* 800A0218 0009D178  C8 22 89 58 */	lfd f1, @148-_SDA2_BASE_(r2)
/* 800A021C 0009D17C  48 00 01 94 */	b lbl_800A03B0
lbl_800A0220:
/* 800A0220 0009D180  C8 22 89 60 */	lfd f1, @149-_SDA2_BASE_(r2)
/* 800A0224 0009D184  48 00 01 8C */	b lbl_800A03B0
lbl_800A0228:
/* 800A0228 0009D188  3C 06 80 10 */	addis r0, r6, 0x8010
/* 800A022C 0009D18C  28 00 00 00 */	cmplwi r0, 0
/* 800A0230 0009D190  40 82 00 A0 */	bne lbl_800A02D0
/* 800A0234 0009D194  3C 07 80 10 */	addis r0, r7, 0x8010
/* 800A0238 0009D198  28 00 00 00 */	cmplwi r0, 0
/* 800A023C 0009D19C  40 82 00 4C */	bne lbl_800A0288
/* 800A0240 0009D1A0  2C 1F 00 02 */	cmpwi r31, 2
/* 800A0244 0009D1A4  41 82 00 34 */	beq lbl_800A0278
/* 800A0248 0009D1A8  40 80 00 14 */	bge lbl_800A025C
/* 800A024C 0009D1AC  2C 1F 00 00 */	cmpwi r31, 0
/* 800A0250 0009D1B0  41 82 00 18 */	beq lbl_800A0268
/* 800A0254 0009D1B4  40 80 00 1C */	bge lbl_800A0270
/* 800A0258 0009D1B8  48 00 00 78 */	b lbl_800A02D0
lbl_800A025C:
/* 800A025C 0009D1BC  2C 1F 00 04 */	cmpwi r31, 4
/* 800A0260 0009D1C0  40 80 00 70 */	bge lbl_800A02D0
/* 800A0264 0009D1C4  48 00 00 1C */	b lbl_800A0280
lbl_800A0268:
/* 800A0268 0009D1C8  C8 22 89 68 */	lfd f1, @150-_SDA2_BASE_(r2)
/* 800A026C 0009D1CC  48 00 01 44 */	b lbl_800A03B0
lbl_800A0270:
/* 800A0270 0009D1D0  C8 22 89 70 */	lfd f1, @151-_SDA2_BASE_(r2)
/* 800A0274 0009D1D4  48 00 01 3C */	b lbl_800A03B0
lbl_800A0278:
/* 800A0278 0009D1D8  C8 22 89 78 */	lfd f1, @152-_SDA2_BASE_(r2)
/* 800A027C 0009D1DC  48 00 01 34 */	b lbl_800A03B0
lbl_800A0280:
/* 800A0280 0009D1E0  C8 22 89 80 */	lfd f1, @153-_SDA2_BASE_(r2)
/* 800A0284 0009D1E4  48 00 01 2C */	b lbl_800A03B0
lbl_800A0288:
/* 800A0288 0009D1E8  2C 1F 00 02 */	cmpwi r31, 2
/* 800A028C 0009D1EC  41 82 00 34 */	beq lbl_800A02C0
/* 800A0290 0009D1F0  40 80 00 14 */	bge lbl_800A02A4
/* 800A0294 0009D1F4  2C 1F 00 00 */	cmpwi r31, 0
/* 800A0298 0009D1F8  41 82 00 18 */	beq lbl_800A02B0
/* 800A029C 0009D1FC  40 80 00 1C */	bge lbl_800A02B8
/* 800A02A0 0009D200  48 00 00 30 */	b lbl_800A02D0
lbl_800A02A4:
/* 800A02A4 0009D204  2C 1F 00 04 */	cmpwi r31, 4
/* 800A02A8 0009D208  40 80 00 28 */	bge lbl_800A02D0
/* 800A02AC 0009D20C  48 00 00 1C */	b lbl_800A02C8
lbl_800A02B0:
/* 800A02B0 0009D210  C8 22 89 88 */	lfd f1, @154-_SDA2_BASE_(r2)
/* 800A02B4 0009D214  48 00 00 FC */	b lbl_800A03B0
lbl_800A02B8:
/* 800A02B8 0009D218  C8 22 89 90 */	lfd f1, @155-_SDA2_BASE_(r2)
/* 800A02BC 0009D21C  48 00 00 F4 */	b lbl_800A03B0
lbl_800A02C0:
/* 800A02C0 0009D220  C8 22 89 48 */	lfd f1, @146-_SDA2_BASE_(r2)
/* 800A02C4 0009D224  48 00 00 EC */	b lbl_800A03B0
lbl_800A02C8:
/* 800A02C8 0009D228  C8 22 89 50 */	lfd f1, @147-_SDA2_BASE_(r2)
/* 800A02CC 0009D22C  48 00 00 E4 */	b lbl_800A03B0
lbl_800A02D0:
/* 800A02D0 0009D230  3C 07 80 10 */	addis r0, r7, 0x8010
/* 800A02D4 0009D234  28 00 00 00 */	cmplwi r0, 0
/* 800A02D8 0009D238  40 82 00 1C */	bne lbl_800A02F4
/* 800A02DC 0009D23C  2C 05 00 00 */	cmpwi r5, 0
/* 800A02E0 0009D240  40 80 00 0C */	bge lbl_800A02EC
/* 800A02E4 0009D244  C8 22 89 58 */	lfd f1, @148-_SDA2_BASE_(r2)
/* 800A02E8 0009D248  48 00 00 C8 */	b lbl_800A03B0
lbl_800A02EC:
/* 800A02EC 0009D24C  C8 22 89 60 */	lfd f1, @149-_SDA2_BASE_(r2)
/* 800A02F0 0009D250  48 00 00 C0 */	b lbl_800A03B0
lbl_800A02F4:
/* 800A02F4 0009D254  7C 06 38 50 */	subf r0, r6, r7
/* 800A02F8 0009D258  7C 00 A6 70 */	srawi r0, r0, 0x14
/* 800A02FC 0009D25C  2C 00 00 3C */	cmpwi r0, 0x3c
/* 800A0300 0009D260  40 81 00 10 */	ble lbl_800A0310
/* 800A0304 0009D264  C8 02 89 60 */	lfd f0, @149-_SDA2_BASE_(r2)
/* 800A0308 0009D268  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800A030C 0009D26C  48 00 00 38 */	b lbl_800A0344
lbl_800A0310:
/* 800A0310 0009D270  2C 04 00 00 */	cmpwi r4, 0
/* 800A0314 0009D274  40 80 00 18 */	bge lbl_800A032C
/* 800A0318 0009D278  2C 00 FF C4 */	cmpwi r0, -60
/* 800A031C 0009D27C  40 80 00 10 */	bge lbl_800A032C
/* 800A0320 0009D280  C8 02 89 88 */	lfd f0, @154-_SDA2_BASE_(r2)
/* 800A0324 0009D284  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800A0328 0009D288  48 00 00 1C */	b lbl_800A0344
lbl_800A032C:
/* 800A032C 0009D28C  C8 21 00 08 */	lfd f1, 8(r1)
/* 800A0330 0009D290  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800A0334 0009D294  FC 01 00 24 */	fdiv f0, f1, f0
/* 800A0338 0009D298  FC 20 02 10 */	fabs f1, f0
/* 800A033C 0009D29C  48 00 14 11 */	bl atan
/* 800A0340 0009D2A0  D8 21 00 18 */	stfd f1, 0x18(r1)
lbl_800A0344:
/* 800A0344 0009D2A4  2C 1F 00 01 */	cmpwi r31, 1
/* 800A0348 0009D2A8  41 82 00 28 */	beq lbl_800A0370
/* 800A034C 0009D2AC  40 80 00 10 */	bge lbl_800A035C
/* 800A0350 0009D2B0  2C 1F 00 00 */	cmpwi r31, 0
/* 800A0354 0009D2B4  40 80 00 14 */	bge lbl_800A0368
/* 800A0358 0009D2B8  48 00 00 44 */	b lbl_800A039C
lbl_800A035C:
/* 800A035C 0009D2BC  2C 1F 00 03 */	cmpwi r31, 3
/* 800A0360 0009D2C0  40 80 00 3C */	bge lbl_800A039C
/* 800A0364 0009D2C4  48 00 00 20 */	b lbl_800A0384
lbl_800A0368:
/* 800A0368 0009D2C8  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 800A036C 0009D2CC  48 00 00 44 */	b lbl_800A03B0
lbl_800A0370:
/* 800A0370 0009D2D0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 800A0374 0009D2D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800A0378 0009D2D8  90 01 00 18 */	stw r0, 0x18(r1)
/* 800A037C 0009D2DC  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 800A0380 0009D2E0  48 00 00 30 */	b lbl_800A03B0
lbl_800A0384:
/* 800A0384 0009D2E4  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 800A0388 0009D2E8  C8 02 89 98 */	lfd f0, @156-_SDA2_BASE_(r2)
/* 800A038C 0009D2EC  C8 42 89 48 */	lfd f2, @146-_SDA2_BASE_(r2)
/* 800A0390 0009D2F0  FC 01 00 28 */	fsub f0, f1, f0
/* 800A0394 0009D2F4  FC 22 00 28 */	fsub f1, f2, f0
/* 800A0398 0009D2F8  48 00 00 18 */	b lbl_800A03B0
lbl_800A039C:
/* 800A039C 0009D2FC  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 800A03A0 0009D300  C8 22 89 98 */	lfd f1, @156-_SDA2_BASE_(r2)
/* 800A03A4 0009D304  C8 02 89 48 */	lfd f0, @146-_SDA2_BASE_(r2)
/* 800A03A8 0009D308  FC 22 08 28 */	fsub f1, f2, f1
/* 800A03AC 0009D30C  FC 21 00 28 */	fsub f1, f1, f0
lbl_800A03B0:
/* 800A03B0 0009D310  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A03B4 0009D314  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800A03B8 0009D318  7C 08 03 A6 */	mtlr r0
/* 800A03BC 0009D31C  38 21 00 30 */	addi r1, r1, 0x30
/* 800A03C0 0009D320  4E 80 00 20 */	blr 