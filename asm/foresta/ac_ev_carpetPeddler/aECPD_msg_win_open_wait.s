lbl_8051BE44:
/* 8051BE44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051BE48  7C 08 02 A6 */	mflr r0
/* 8051BE4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051BE50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051BE54  7C 9F 23 78 */	mr r31, r4
/* 8051BE58  93 C1 00 08 */	stw r30, 8(r1)
/* 8051BE5C  7C 7E 1B 78 */	mr r30, r3
/* 8051BE60  4B EA 38 49 */	bl func_803BF6A8
/* 8051BE64  4B EA 39 01 */	bl mMsg_Check_not_series_main_wait
/* 8051BE68  2C 03 00 01 */	cmpwi r3, 1
/* 8051BE6C  40 82 00 1C */	bne lbl_8051BE88
/* 8051BE70  81 9E 09 A0 */	lwz r12, 0x9a0(r30)
/* 8051BE74  7F C3 F3 78 */	mr r3, r30
/* 8051BE78  7F E4 FB 78 */	mr r4, r31
/* 8051BE7C  80 BE 09 AC */	lwz r5, 0x9ac(r30)
/* 8051BE80  7D 89 03 A6 */	mtctr r12
/* 8051BE84  4E 80 04 21 */	bctrl 
lbl_8051BE88:
/* 8051BE88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051BE8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051BE90  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051BE94  7C 08 03 A6 */	mtlr r0
/* 8051BE98  38 21 00 10 */	addi r1, r1, 0x10
/* 8051BE9C  4E 80 00 20 */	blr 
