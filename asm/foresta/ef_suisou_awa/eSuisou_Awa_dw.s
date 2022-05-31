lbl_8061F98C:
/* 8061F98C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8061F990  7C 08 02 A6 */	mflr r0
/* 8061F994  90 01 00 54 */	stw r0, 0x54(r1)
/* 8061F998  39 61 00 50 */	addi r11, r1, 0x50
/* 8061F99C  4B A7 B5 31 */	bl func_8009AECC
/* 8061F9A0  7C 7B 1B 78 */	mr r27, r3
/* 8061F9A4  7C 9D 23 78 */	mr r29, r4
/* 8061F9A8  AB 83 00 4C */	lha r28, 0x4c(r3)
/* 8061F9AC  7F A3 EB 78 */	mr r3, r29
/* 8061F9B0  AB FB 00 50 */	lha r31, 0x50(r27)
/* 8061F9B4  38 9B 00 10 */	addi r4, r27, 0x10
/* 8061F9B8  38 A1 00 08 */	addi r5, r1, 8
/* 8061F9BC  4B D9 BD 69 */	bl Game_play_Projection_Trans
/* 8061F9C0  3C 60 80 65 */	lis r3, lit_462@ha /* 0x8064CCAC@ha */
/* 8061F9C4  C0 41 00 08 */	lfs f2, 8(r1)
/* 8061F9C8  C0 23 CC AC */	lfs f1, lit_462@l(r3)  /* 0x8064CCAC@l */
/* 8061F9CC  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8061F9D0  40 80 01 34 */	bge lbl_8061FB04
/* 8061F9D4  3C 60 80 65 */	lis r3, lit_499@ha /* 0x8064CCD4@ha */
/* 8061F9D8  C0 03 CC D4 */	lfs f0, lit_499@l(r3)  /* 0x8064CCD4@l */
/* 8061F9DC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8061F9E0  40 80 01 24 */	bge lbl_8061FB04
/* 8061F9E4  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8061F9E8  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8061F9EC  40 80 01 18 */	bge lbl_8061FB04
/* 8061F9F0  3C 60 80 65 */	lis r3, lit_500@ha /* 0x8064CCD8@ha */
/* 8061F9F4  C0 03 CC D8 */	lfs f0, lit_500@l(r3)  /* 0x8064CCD8@l */
/* 8061F9F8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8061F9FC  40 80 01 08 */	bge lbl_8061FB04
/* 8061FA00  83 DD 00 00 */	lwz r30, 0(r29)
/* 8061FA04  7F 83 E3 78 */	mr r3, r28
/* 8061FA08  80 9B 00 10 */	lwz r4, 0x10(r27)
/* 8061FA0C  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 8061FA10  90 81 00 20 */	stw r4, 0x20(r1)
/* 8061FA14  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061FA18  80 1B 00 18 */	lwz r0, 0x18(r27)
/* 8061FA1C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8061FA20  80 9B 00 34 */	lwz r4, 0x34(r27)
/* 8061FA24  80 1B 00 38 */	lwz r0, 0x38(r27)
/* 8061FA28  90 81 00 14 */	stw r4, 0x14(r1)
/* 8061FA2C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8061FA30  80 1B 00 3C */	lwz r0, 0x3c(r27)
/* 8061FA34  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8061FA38  4B D9 B0 65 */	bl cos_s
/* 8061FA3C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8061FA40  7F 83 E3 78 */	mr r3, r28
/* 8061FA44  EC 00 08 2A */	fadds f0, f0, f1
/* 8061FA48  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8061FA4C  4B D9 B0 A5 */	bl sin_s
/* 8061FA50  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8061FA54  7F E3 FB 78 */	mr r3, r31
/* 8061FA58  EC 00 08 2A */	fadds f0, f0, f1
/* 8061FA5C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8061FA60  4B D9 B0 91 */	bl sin_s
/* 8061FA64  3C 80 80 65 */	lis r4, lit_470@ha /* 0x8064CCD0@ha */
/* 8061FA68  3C 60 80 65 */	lis r3, lit_463@ha /* 0x8064CCB0@ha */
/* 8061FA6C  C0 64 CC D0 */	lfs f3, lit_470@l(r4)  /* 0x8064CCD0@l */
/* 8061FA70  C0 43 CC B0 */	lfs f2, lit_463@l(r3)  /* 0x8064CCB0@l */
/* 8061FA74  7F E3 FB 78 */	mr r3, r31
/* 8061FA78  EC 23 00 72 */	fmuls f1, f3, f1
/* 8061FA7C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8061FA80  EC 22 08 2A */	fadds f1, f2, f1
/* 8061FA84  EC 00 00 72 */	fmuls f0, f0, f1
/* 8061FA88  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8061FA8C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8061FA90  4B D9 B0 0D */	bl cos_s
/* 8061FA94  3C 60 80 65 */	lis r3, lit_470@ha /* 0x8064CCD0@ha */
/* 8061FA98  3C 80 80 65 */	lis r4, lit_463@ha /* 0x8064CCB0@ha */
/* 8061FA9C  38 A3 CC D0 */	addi r5, r3, lit_470@l /* 0x8064CCD0@l */
/* 8061FAA0  C0 44 CC B0 */	lfs f2, lit_463@l(r4)  /* 0x8064CCB0@l */
/* 8061FAA4  C0 05 00 00 */	lfs f0, 0(r5)
/* 8061FAA8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061FAAC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061FAB0  38 A1 00 14 */	addi r5, r1, 0x14
/* 8061FAB4  EC 20 00 72 */	fmuls f1, f0, f1
/* 8061FAB8  3C 83 00 02 */	addis r4, r3, 2
/* 8061FABC  80 C4 60 9C */	lwz r6, 0x609c(r4)
/* 8061FAC0  7F A3 EB 78 */	mr r3, r29
/* 8061FAC4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8061FAC8  38 81 00 20 */	addi r4, r1, 0x20
/* 8061FACC  EC 22 08 2A */	fadds f1, f2, f1
/* 8061FAD0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8061FAD4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8061FAD8  81 86 00 18 */	lwz r12, 0x18(r6)
/* 8061FADC  7D 89 03 A6 */	mtctr r12
/* 8061FAE0  4E 80 04 21 */	bctrl 
/* 8061FAE4  80 DE 02 E0 */	lwz r6, 0x2e0(r30)
/* 8061FAE8  3C 60 80 CC */	lis r3, ef_museum5_awa1_model@ha /* 0x80CBF8A0@ha */
/* 8061FAEC  3C 80 DE 00 */	lis r4, 0xde00
/* 8061FAF0  38 A6 00 08 */	addi r5, r6, 8
/* 8061FAF4  38 03 F8 A0 */	addi r0, r3, ef_museum5_awa1_model@l /* 0x80CBF8A0@l */
/* 8061FAF8  90 BE 02 E0 */	stw r5, 0x2e0(r30)
/* 8061FAFC  90 86 00 00 */	stw r4, 0(r6)
/* 8061FB00  90 06 00 04 */	stw r0, 4(r6)
lbl_8061FB04:
/* 8061FB04  39 61 00 50 */	addi r11, r1, 0x50
/* 8061FB08  4B A7 B4 11 */	bl func_8009AF18
/* 8061FB0C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8061FB10  7C 08 03 A6 */	mtlr r0
/* 8061FB14  38 21 00 50 */	addi r1, r1, 0x50
/* 8061FB18  4E 80 00 20 */	blr 
