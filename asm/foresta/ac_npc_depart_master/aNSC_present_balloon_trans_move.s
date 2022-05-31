lbl_8054FC50:
/* 8054FC50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054FC54  7C 08 02 A6 */	mflr r0
/* 8054FC58  3C A0 80 65 */	lis r5, lit_1355@ha /* 0x80649528@ha */
/* 8054FC5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054FC60  C0 05 95 28 */	lfs f0, lit_1355@l(r5)  /* 0x80649528@l */
/* 8054FC64  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 8054FC68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8054FC6C  40 81 00 10 */	ble lbl_8054FC7C
/* 8054FC70  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 8054FC74  38 A0 00 09 */	li r5, 9
/* 8054FC78  48 00 2B BD */	bl aNSC_setupAction
lbl_8054FC7C:
/* 8054FC7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054FC80  7C 08 03 A6 */	mtlr r0
/* 8054FC84  38 21 00 10 */	addi r1, r1, 0x10
/* 8054FC88  4E 80 00 20 */	blr 
