lbl_80431E34:
/* 80431E34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80431E38  7C 08 02 A6 */	mflr r0
/* 80431E3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80431E40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80431E44  7C 7F 1B 78 */	mr r31, r3
/* 80431E48  4B FF FE C1 */	bl mfish_get_hide_camera_angle
/* 80431E4C  B0 7F 06 34 */	sth r3, 0x634(r31)
/* 80431E50  A8 1F 06 30 */	lha r0, 0x630(r31)
/* 80431E54  2C 00 00 02 */	cmpwi r0, 2
/* 80431E58  40 82 00 7C */	bne lbl_80431ED4
/* 80431E5C  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 80431E60  2C 00 00 00 */	cmpwi r0, 0
/* 80431E64  40 80 00 70 */	bge lbl_80431ED4
/* 80431E68  A8 1F 06 34 */	lha r0, 0x634(r31)
/* 80431E6C  2C 00 00 00 */	cmpwi r0, 0
/* 80431E70  40 81 00 64 */	ble lbl_80431ED4
/* 80431E74  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80431E78  3C 00 43 30 */	lis r0, 0x4330
/* 80431E7C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80431E80  3C A0 80 64 */	lis r5, lit_527@ha /* 0x80644268@ha */
/* 80431E84  80 84 00 00 */	lwz r4, 0(r4)
/* 80431E88  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80431E8C  3C C0 80 64 */	lis r6, lit_603@ha /* 0x8064429C@ha */
/* 80431E90  90 01 00 08 */	stw r0, 8(r1)
/* 80431E94  A8 84 1B B4 */	lha r4, 0x1bb4(r4)
/* 80431E98  C8 23 42 8C */	lfd f1, lit_570@l(r3)  /* 0x8064428C@l */
/* 80431E9C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80431EA0  C0 45 42 68 */	lfs f2, lit_527@l(r5)  /* 0x80644268@l */
/* 80431EA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80431EA8  C0 66 42 9C */	lfs f3, lit_603@l(r6)  /* 0x8064429C@l */
/* 80431EAC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80431EB0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80431EB4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80431EB8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80431EBC  EC 03 00 2A */	fadds f0, f3, f0
/* 80431EC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80431EC4  40 81 00 08 */	ble lbl_80431ECC
/* 80431EC8  48 00 00 08 */	b lbl_80431ED0
lbl_80431ECC:
/* 80431ECC  FC 20 00 90 */	fmr f1, f0
lbl_80431ED0:
/* 80431ED0  D0 3F 05 F0 */	stfs f1, 0x5f0(r31)
lbl_80431ED4:
/* 80431ED4  3C 60 80 43 */	lis r3, mfish_dummy_process@ha /* 0x80431EF4@ha */
/* 80431ED8  38 03 1E F4 */	addi r0, r3, mfish_dummy_process@l /* 0x80431EF4@l */
/* 80431EDC  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80431EE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80431EE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80431EE8  7C 08 03 A6 */	mtlr r0
/* 80431EEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80431EF0  4E 80 00 20 */	blr 
