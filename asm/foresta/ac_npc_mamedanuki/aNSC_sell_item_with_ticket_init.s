lbl_8055EA48:
/* 8055EA48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055EA4C  7C 08 02 A6 */	mflr r0
/* 8055EA50  38 A0 00 00 */	li r5, 0
/* 8055EA54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055EA58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055EA5C  7C 9F 23 78 */	mr r31, r4
/* 8055EA60  38 80 00 09 */	li r4, 9
/* 8055EA64  93 C1 00 08 */	stw r30, 8(r1)
/* 8055EA68  7C 7E 1B 78 */	mr r30, r3
/* 8055EA6C  38 60 00 04 */	li r3, 4
/* 8055EA70  4B E3 99 C9 */	bl mDemo_Set_OrderValue
/* 8055EA74  7F C3 F3 78 */	mr r3, r30
/* 8055EA78  7F E4 FB 78 */	mr r4, r31
/* 8055EA7C  4B FF FF 69 */	bl aNSC_sell_item_init
/* 8055EA80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055EA84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055EA88  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055EA8C  7C 08 03 A6 */	mtlr r0
/* 8055EA90  38 21 00 10 */	addi r1, r1, 0x10
/* 8055EA94  4E 80 00 20 */	blr 
