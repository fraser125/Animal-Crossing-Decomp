lbl_8042F090:
/* 8042F090  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8042F094  7C 08 02 A6 */	mflr r0
/* 8042F098  90 01 00 44 */	stw r0, 0x44(r1)
/* 8042F09C  39 61 00 40 */	addi r11, r1, 0x40
/* 8042F0A0  4B C6 BE 31 */	bl func_8009AED0
/* 8042F0A4  A9 03 00 00 */	lha r8, 0(r3)
/* 8042F0A8  3C C0 43 30 */	lis r6, 0x4330
/* 8042F0AC  A8 03 00 02 */	lha r0, 2(r3)
/* 8042F0B0  3C E0 80 64 */	lis r7, lit_478@ha /* 0x806441FC@ha */
/* 8042F0B4  6D 03 80 00 */	xoris r3, r8, 0x8000
/* 8042F0B8  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8042F0BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8042F0C0  3D 00 80 64 */	lis r8, lit_474@ha /* 0x806441F4@ha */
/* 8042F0C4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8042F0C8  38 67 41 FC */	addi r3, r7, lit_478@l /* 0x806441FC@l */
/* 8042F0CC  C8 63 00 00 */	lfd f3, 0(r3)
/* 8042F0D0  38 E8 41 F4 */	addi r7, r8, lit_474@l /* 0x806441F4@l */
/* 8042F0D4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8042F0D8  3D 00 80 64 */	lis r8, lit_473@ha /* 0x806441F0@ha */
/* 8042F0DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042F0E0  38 68 41 F0 */	addi r3, r8, lit_473@l /* 0x806441F0@l */
/* 8042F0E4  EC 20 18 28 */	fsubs f1, f0, f3
/* 8042F0E8  C0 47 00 00 */	lfs f2, 0(r7)
/* 8042F0EC  90 C1 00 20 */	stw r6, 0x20(r1)
/* 8042F0F0  3D 00 80 64 */	lis r8, data_806441E4@ha /* 0x806441E4@ha */
/* 8042F0F4  84 E8 41 E4 */	lwzu r7, data_806441E4@l(r8)  /* 0x806441E4@l */
/* 8042F0F8  7C 9C 23 78 */	mr r28, r4
/* 8042F0FC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8042F100  EC 22 00 72 */	fmuls f1, f2, f1
/* 8042F104  C0 83 00 00 */	lfs f4, 0(r3)
/* 8042F108  7C BD 2B 78 */	mr r29, r5
/* 8042F10C  EC 00 18 28 */	fsubs f0, f0, f3
/* 8042F110  80 88 00 04 */	lwz r4, 4(r8)
/* 8042F114  80 08 00 08 */	lwz r0, 8(r8)
/* 8042F118  90 81 00 0C */	stw r4, 0xc(r1)
/* 8042F11C  EC 24 08 2A */	fadds f1, f4, f1
/* 8042F120  EC 02 00 32 */	fmuls f0, f2, f0
/* 8042F124  90 E1 00 08 */	stw r7, 8(r1)
/* 8042F128  38 60 00 00 */	li r3, 0
/* 8042F12C  83 C5 00 00 */	lwz r30, 0(r5)
/* 8042F130  EC 64 00 2A */	fadds f3, f4, f0
/* 8042F134  90 01 00 10 */	stw r0, 0x10(r1)
/* 8042F138  D0 21 00 08 */	stfs f1, 8(r1)
/* 8042F13C  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8042F140  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8042F144  4B FD D1 BD */	bl Matrix_translate
/* 8042F148  3C 80 80 64 */	lis r4, lit_475@ha /* 0x806441F8@ha */
/* 8042F14C  38 60 00 01 */	li r3, 1
/* 8042F150  C0 24 41 F8 */	lfs f1, lit_475@l(r4)  /* 0x806441F8@l */
/* 8042F154  FC 40 08 90 */	fmr f2, f1
/* 8042F158  FC 60 08 90 */	fmr f3, f1
/* 8042F15C  4B FD D2 91 */	bl Matrix_scale
/* 8042F160  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 8042F164  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8042F168  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8042F16C  38 7F 00 08 */	addi r3, r31, 8
/* 8042F170  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8042F174  90 1F 00 00 */	stw r0, 0(r31)
/* 8042F178  80 7D 00 00 */	lwz r3, 0(r29)
/* 8042F17C  4B FD E2 59 */	bl _Matrix_to_Mtx_new
/* 8042F180  90 7F 00 04 */	stw r3, 4(r31)
/* 8042F184  3C 00 DE 00 */	lis r0, 0xde00
/* 8042F188  80 9E 02 D0 */	lwz r4, 0x2d0(r30)
/* 8042F18C  38 64 00 08 */	addi r3, r4, 8
/* 8042F190  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8042F194  90 04 00 00 */	stw r0, 0(r4)
/* 8042F198  93 84 00 04 */	stw r28, 4(r4)
/* 8042F19C  39 61 00 40 */	addi r11, r1, 0x40
/* 8042F1A0  4B C6 BD 7D */	bl func_8009AF1C
/* 8042F1A4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8042F1A8  7C 08 03 A6 */	mtlr r0
/* 8042F1AC  38 21 00 40 */	addi r1, r1, 0x40
/* 8042F1B0  4E 80 00 20 */	blr 