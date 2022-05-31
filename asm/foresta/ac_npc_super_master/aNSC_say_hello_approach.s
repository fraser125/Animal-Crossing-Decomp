lbl_80582F84:
/* 80582F84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80582F88  7C 08 02 A6 */	mflr r0
/* 80582F8C  3C A0 80 65 */	lis r5, lit_1370@ha /* 0x80649AC8@ha */
/* 80582F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80582F94  C0 05 9A C8 */	lfs f0, lit_1370@l(r5)  /* 0x80649AC8@l */
/* 80582F98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80582F9C  7C 7F 1B 78 */	mr r31, r3
/* 80582FA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80582FA4  7C 9E 23 78 */	mr r30, r4
/* 80582FA8  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 80582FAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80582FB0  40 81 00 14 */	ble lbl_80582FC4
/* 80582FB4  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 80582FB8  38 A0 00 02 */	li r5, 2
/* 80582FBC  48 00 30 05 */	bl aNSC_setupAction
/* 80582FC0  48 00 00 3C */	b lbl_80582FFC
lbl_80582FC4:
/* 80582FC4  7F E4 FB 78 */	mr r4, r31
/* 80582FC8  38 60 00 08 */	li r3, 8
/* 80582FCC  4B E1 72 99 */	bl mDemo_Check
/* 80582FD0  2C 03 00 00 */	cmpwi r3, 0
/* 80582FD4  40 82 00 28 */	bne lbl_80582FFC
/* 80582FD8  7F E4 FB 78 */	mr r4, r31
/* 80582FDC  38 60 00 07 */	li r3, 7
/* 80582FE0  4B E1 72 85 */	bl mDemo_Check
/* 80582FE4  2C 03 00 00 */	cmpwi r3, 0
/* 80582FE8  40 82 00 14 */	bne lbl_80582FFC
/* 80582FEC  7F E3 FB 78 */	mr r3, r31
/* 80582FF0  7F C4 F3 78 */	mr r4, r30
/* 80582FF4  38 A0 00 02 */	li r5, 2
/* 80582FF8  48 00 2F C9 */	bl aNSC_setupAction
lbl_80582FFC:
/* 80582FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80583000  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80583004  83 C1 00 08 */	lwz r30, 8(r1)
/* 80583008  7C 08 03 A6 */	mtlr r0
/* 8058300C  38 21 00 10 */	addi r1, r1, 0x10
/* 80583010  4E 80 00 20 */	blr 
