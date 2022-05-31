lbl_80547EE0:
/* 80547EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80547EE4  7C 08 02 A6 */	mflr r0
/* 80547EE8  3C A0 80 65 */	lis r5, lit_1343@ha /* 0x806494BC@ha */
/* 80547EEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80547EF0  C0 05 94 BC */	lfs f0, lit_1343@l(r5)  /* 0x806494BC@l */
/* 80547EF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80547EF8  7C 7F 1B 78 */	mr r31, r3
/* 80547EFC  93 C1 00 08 */	stw r30, 8(r1)
/* 80547F00  7C 9E 23 78 */	mr r30, r4
/* 80547F04  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 80547F08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80547F0C  40 81 00 14 */	ble lbl_80547F20
/* 80547F10  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 80547F14  38 A0 00 02 */	li r5, 2
/* 80547F18  48 00 30 05 */	bl aNSC_setupAction
/* 80547F1C  48 00 00 3C */	b lbl_80547F58
lbl_80547F20:
/* 80547F20  7F E4 FB 78 */	mr r4, r31
/* 80547F24  38 60 00 08 */	li r3, 8
/* 80547F28  4B E5 23 3D */	bl mDemo_Check
/* 80547F2C  2C 03 00 00 */	cmpwi r3, 0
/* 80547F30  40 82 00 28 */	bne lbl_80547F58
/* 80547F34  7F E4 FB 78 */	mr r4, r31
/* 80547F38  38 60 00 07 */	li r3, 7
/* 80547F3C  4B E5 23 29 */	bl mDemo_Check
/* 80547F40  2C 03 00 00 */	cmpwi r3, 0
/* 80547F44  40 82 00 14 */	bne lbl_80547F58
/* 80547F48  7F E3 FB 78 */	mr r3, r31
/* 80547F4C  7F C4 F3 78 */	mr r4, r30
/* 80547F50  38 A0 00 02 */	li r5, 2
/* 80547F54  48 00 2F C9 */	bl aNSC_setupAction
lbl_80547F58:
/* 80547F58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80547F5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80547F60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80547F64  7C 08 03 A6 */	mtlr r0
/* 80547F68  38 21 00 10 */	addi r1, r1, 0x10
/* 80547F6C  4E 80 00 20 */	blr 
