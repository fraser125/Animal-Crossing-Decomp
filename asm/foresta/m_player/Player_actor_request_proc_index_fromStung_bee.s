lbl_80502D38:
/* 80502D38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80502D3C  7C 08 02 A6 */	mflr r0
/* 80502D40  3C A0 80 65 */	lis r5, lit_15537@ha /* 0x80648590@ha */
/* 80502D44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80502D48  C0 05 85 90 */	lfs f0, lit_15537@l(r5)  /* 0x80648590@l */
/* 80502D4C  C0 23 0D 18 */	lfs f1, 0xd18(r3)
/* 80502D50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80502D54  40 81 00 14 */	ble lbl_80502D68
/* 80502D58  7C 83 23 78 */	mr r3, r4
/* 80502D5C  38 80 00 1A */	li r4, 0x1a
/* 80502D60  48 00 00 D9 */	bl func_80502E38
/* 80502D64  48 00 00 14 */	b lbl_80502D78
lbl_80502D68:
/* 80502D68  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 80502D6C  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 80502D70  EC 01 00 2A */	fadds f0, f1, f0
/* 80502D74  D0 03 0D 18 */	stfs f0, 0xd18(r3)
lbl_80502D78:
/* 80502D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80502D7C  7C 08 03 A6 */	mtlr r0
/* 80502D80  38 21 00 10 */	addi r1, r1, 0x10
/* 80502D84  4E 80 00 20 */	blr 