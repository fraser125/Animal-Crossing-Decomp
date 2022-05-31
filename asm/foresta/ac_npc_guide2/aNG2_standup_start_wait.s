lbl_80555BB0:
/* 80555BB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80555BB4  7C 08 02 A6 */	mflr r0
/* 80555BB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80555BBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80555BC0  7C 9F 23 78 */	mr r31, r4
/* 80555BC4  93 C1 00 08 */	stw r30, 8(r1)
/* 80555BC8  7C 7E 1B 78 */	mr r30, r3
/* 80555BCC  7F C4 F3 78 */	mr r4, r30
/* 80555BD0  38 60 00 08 */	li r3, 8
/* 80555BD4  4B E4 46 91 */	bl mDemo_Check
/* 80555BD8  2C 03 00 00 */	cmpwi r3, 0
/* 80555BDC  40 82 00 1C */	bne lbl_80555BF8
/* 80555BE0  38 00 00 00 */	li r0, 0
/* 80555BE4  7F C3 F3 78 */	mr r3, r30
/* 80555BE8  90 1E 09 C4 */	stw r0, 0x9c4(r30)
/* 80555BEC  7F E4 FB 78 */	mr r4, r31
/* 80555BF0  38 A0 00 0E */	li r5, 0xe
/* 80555BF4  48 00 09 29 */	bl aNG2_setupAction
lbl_80555BF8:
/* 80555BF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80555BFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80555C00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80555C04  7C 08 03 A6 */	mtlr r0
/* 80555C08  38 21 00 10 */	addi r1, r1, 0x10
/* 80555C0C  4E 80 00 20 */	blr 
