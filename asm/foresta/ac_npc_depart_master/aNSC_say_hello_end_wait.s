lbl_8054F888:
/* 8054F888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054F88C  7C 08 02 A6 */	mflr r0
/* 8054F890  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054F894  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054F898  7C 7F 1B 78 */	mr r31, r3
/* 8054F89C  38 60 00 08 */	li r3, 8
/* 8054F8A0  93 C1 00 08 */	stw r30, 8(r1)
/* 8054F8A4  7C 9E 23 78 */	mr r30, r4
/* 8054F8A8  7F E4 FB 78 */	mr r4, r31
/* 8054F8AC  4B E4 A9 B9 */	bl mDemo_Check
/* 8054F8B0  2C 03 00 00 */	cmpwi r3, 0
/* 8054F8B4  40 82 00 30 */	bne lbl_8054F8E4
/* 8054F8B8  7F E4 FB 78 */	mr r4, r31
/* 8054F8BC  38 60 00 07 */	li r3, 7
/* 8054F8C0  4B E4 A9 A5 */	bl mDemo_Check
/* 8054F8C4  2C 03 00 00 */	cmpwi r3, 0
/* 8054F8C8  40 82 00 1C */	bne lbl_8054F8E4
/* 8054F8CC  38 00 00 00 */	li r0, 0
/* 8054F8D0  7F E3 FB 78 */	mr r3, r31
/* 8054F8D4  B0 1F 09 78 */	sth r0, 0x978(r31)
/* 8054F8D8  7F C4 F3 78 */	mr r4, r30
/* 8054F8DC  38 A0 00 3D */	li r5, 0x3d
/* 8054F8E0  48 00 2F 55 */	bl aNSC_setupAction
lbl_8054F8E4:
/* 8054F8E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054F8E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054F8EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054F8F0  7C 08 03 A6 */	mtlr r0
/* 8054F8F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8054F8F8  4E 80 00 20 */	blr 
