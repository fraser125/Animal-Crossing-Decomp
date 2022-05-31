lbl_8054C6A8:
/* 8054C6A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054C6AC  7C 08 02 A6 */	mflr r0
/* 8054C6B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054C6B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054C6B8  7C 9F 23 78 */	mr r31, r4
/* 8054C6BC  38 80 00 01 */	li r4, 1
/* 8054C6C0  93 C1 00 08 */	stw r30, 8(r1)
/* 8054C6C4  7C 7E 1B 78 */	mr r30, r3
/* 8054C6C8  38 60 00 04 */	li r3, 4
/* 8054C6CC  4B E4 BD B1 */	bl mDemo_Get_OrderValue
/* 8054C6D0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8054C6D4  2C 00 00 0E */	cmpwi r0, 0xe
/* 8054C6D8  40 82 00 20 */	bne lbl_8054C6F8
/* 8054C6DC  80 BE 09 A0 */	lwz r5, 0x9a0(r30)
/* 8054C6E0  7F C3 F3 78 */	mr r3, r30
/* 8054C6E4  81 9E 09 A8 */	lwz r12, 0x9a8(r30)
/* 8054C6E8  7F E4 FB 78 */	mr r4, r31
/* 8054C6EC  38 A5 00 07 */	addi r5, r5, 7
/* 8054C6F0  7D 89 03 A6 */	mtctr r12
/* 8054C6F4  4E 80 04 21 */	bctrl 
lbl_8054C6F8:
/* 8054C6F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054C6FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054C700  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054C704  7C 08 03 A6 */	mtlr r0
/* 8054C708  38 21 00 10 */	addi r1, r1, 0x10
/* 8054C70C  4E 80 00 20 */	blr 
