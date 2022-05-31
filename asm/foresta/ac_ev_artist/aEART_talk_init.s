lbl_80519B6C:
/* 80519B6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80519B70  7C 08 02 A6 */	mflr r0
/* 80519B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80519B78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80519B7C  7C 7F 1B 78 */	mr r31, r3
/* 80519B80  93 C1 00 08 */	stw r30, 8(r1)
/* 80519B84  7C 9E 23 78 */	mr r30, r4
/* 80519B88  4B FF F8 F1 */	bl func_80519478
/* 80519B8C  20 03 00 01 */	subfic r0, r3, 1
/* 80519B90  81 9F 09 9C */	lwz r12, 0x99c(r31)
/* 80519B94  7C 00 00 34 */	cntlzw r0, r0
/* 80519B98  7F E3 FB 78 */	mr r3, r31
/* 80519B9C  54 05 D9 7E */	srwi r5, r0, 5
/* 80519BA0  7F C4 F3 78 */	mr r4, r30
/* 80519BA4  7D 89 03 A6 */	mtctr r12
/* 80519BA8  4E 80 04 21 */	bctrl 
/* 80519BAC  4B E8 08 09 */	bl mDemo_Set_ListenAble
/* 80519BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80519BB4  38 60 00 01 */	li r3, 1
/* 80519BB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80519BBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80519BC0  7C 08 03 A6 */	mtlr r0
/* 80519BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80519BC8  4E 80 00 20 */	blr 
