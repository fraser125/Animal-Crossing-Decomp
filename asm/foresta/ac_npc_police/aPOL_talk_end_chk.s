lbl_8056AAE8:
/* 8056AAE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056AAEC  7C 08 02 A6 */	mflr r0
/* 8056AAF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056AAF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056AAF8  3B E0 00 00 */	li r31, 0
/* 8056AAFC  93 C1 00 08 */	stw r30, 8(r1)
/* 8056AB00  7C 7E 1B 78 */	mr r30, r3
/* 8056AB04  81 83 09 9C */	lwz r12, 0x99c(r3)
/* 8056AB08  7D 89 03 A6 */	mtctr r12
/* 8056AB0C  4E 80 04 21 */	bctrl 
/* 8056AB10  7F C4 F3 78 */	mr r4, r30
/* 8056AB14  38 60 00 08 */	li r3, 8
/* 8056AB18  4B E2 F7 4D */	bl mDemo_Check
/* 8056AB1C  2C 03 00 00 */	cmpwi r3, 0
/* 8056AB20  40 82 00 1C */	bne lbl_8056AB3C
/* 8056AB24  7F C4 F3 78 */	mr r4, r30
/* 8056AB28  38 60 00 07 */	li r3, 7
/* 8056AB2C  4B E2 F7 39 */	bl mDemo_Check
/* 8056AB30  2C 03 00 00 */	cmpwi r3, 0
/* 8056AB34  40 82 00 08 */	bne lbl_8056AB3C
/* 8056AB38  3B E0 00 01 */	li r31, 1
lbl_8056AB3C:
/* 8056AB3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056AB40  7F E3 FB 78 */	mr r3, r31
/* 8056AB44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056AB48  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056AB4C  7C 08 03 A6 */	mtlr r0
/* 8056AB50  38 21 00 10 */	addi r1, r1, 0x10
/* 8056AB54  4E 80 00 20 */	blr 
