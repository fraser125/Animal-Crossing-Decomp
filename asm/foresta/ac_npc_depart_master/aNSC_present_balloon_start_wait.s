lbl_8054FBF4:
/* 8054FBF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054FBF8  7C 08 02 A6 */	mflr r0
/* 8054FBFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054FC00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054FC04  7C 9F 23 78 */	mr r31, r4
/* 8054FC08  38 80 00 01 */	li r4, 1
/* 8054FC0C  93 C1 00 08 */	stw r30, 8(r1)
/* 8054FC10  7C 7E 1B 78 */	mr r30, r3
/* 8054FC14  38 60 00 04 */	li r3, 4
/* 8054FC18  4B E4 88 65 */	bl mDemo_Get_OrderValue
/* 8054FC1C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8054FC20  2C 00 00 02 */	cmpwi r0, 2
/* 8054FC24  40 82 00 14 */	bne lbl_8054FC38
/* 8054FC28  7F C3 F3 78 */	mr r3, r30
/* 8054FC2C  7F E4 FB 78 */	mr r4, r31
/* 8054FC30  38 A0 00 08 */	li r5, 8
/* 8054FC34  48 00 2C 01 */	bl aNSC_setupAction
lbl_8054FC38:
/* 8054FC38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054FC3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054FC40  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054FC44  7C 08 03 A6 */	mtlr r0
/* 8054FC48  38 21 00 10 */	addi r1, r1, 0x10
/* 8054FC4C  4E 80 00 20 */	blr 
