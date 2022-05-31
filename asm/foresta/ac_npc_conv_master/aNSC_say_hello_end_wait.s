lbl_80547F70:
/* 80547F70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80547F74  7C 08 02 A6 */	mflr r0
/* 80547F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80547F7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80547F80  7C 7F 1B 78 */	mr r31, r3
/* 80547F84  38 60 00 08 */	li r3, 8
/* 80547F88  93 C1 00 08 */	stw r30, 8(r1)
/* 80547F8C  7C 9E 23 78 */	mr r30, r4
/* 80547F90  7F E4 FB 78 */	mr r4, r31
/* 80547F94  4B E5 22 D1 */	bl mDemo_Check
/* 80547F98  2C 03 00 00 */	cmpwi r3, 0
/* 80547F9C  40 82 00 30 */	bne lbl_80547FCC
/* 80547FA0  7F E4 FB 78 */	mr r4, r31
/* 80547FA4  38 60 00 07 */	li r3, 7
/* 80547FA8  4B E5 22 BD */	bl mDemo_Check
/* 80547FAC  2C 03 00 00 */	cmpwi r3, 0
/* 80547FB0  40 82 00 1C */	bne lbl_80547FCC
/* 80547FB4  38 00 00 00 */	li r0, 0
/* 80547FB8  7F E3 FB 78 */	mr r3, r31
/* 80547FBC  B0 1F 09 78 */	sth r0, 0x978(r31)
/* 80547FC0  7F C4 F3 78 */	mr r4, r30
/* 80547FC4  38 A0 00 3D */	li r5, 0x3d
/* 80547FC8  48 00 2F 55 */	bl aNSC_setupAction
lbl_80547FCC:
/* 80547FCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80547FD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80547FD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80547FD8  7C 08 03 A6 */	mtlr r0
/* 80547FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80547FE0  4E 80 00 20 */	blr 
