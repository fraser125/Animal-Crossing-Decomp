lbl_80560264:
/* 80560264  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80560268  7C 08 02 A6 */	mflr r0
/* 8056026C  3C A0 80 65 */	lis r5, lit_748@ha /* 0x80649760@ha */
/* 80560270  90 01 00 14 */	stw r0, 0x14(r1)
/* 80560274  C0 05 97 60 */	lfs f0, lit_748@l(r5)  /* 0x80649760@l */
/* 80560278  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8056027C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80560280  40 81 00 0C */	ble lbl_8056028C
/* 80560284  38 A0 00 09 */	li r5, 9
/* 80560288  48 00 0B 69 */	bl aNM2_setupAction
lbl_8056028C:
/* 8056028C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80560290  7C 08 03 A6 */	mtlr r0
/* 80560294  38 21 00 10 */	addi r1, r1, 0x10
/* 80560298  4E 80 00 20 */	blr 
