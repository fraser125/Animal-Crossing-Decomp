lbl_80585C38:
/* 80585C38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585C3C  7C 08 02 A6 */	mflr r0
/* 80585C40  38 A0 00 00 */	li r5, 0
/* 80585C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585C48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80585C4C  7C 9F 23 78 */	mr r31, r4
/* 80585C50  38 80 00 09 */	li r4, 9
/* 80585C54  93 C1 00 08 */	stw r30, 8(r1)
/* 80585C58  7C 7E 1B 78 */	mr r30, r3
/* 80585C5C  38 60 00 04 */	li r3, 4
/* 80585C60  4B E1 27 D9 */	bl mDemo_Set_OrderValue
/* 80585C64  7F C3 F3 78 */	mr r3, r30
/* 80585C68  7F E4 FB 78 */	mr r4, r31
/* 80585C6C  4B FF FF 69 */	bl aNSC_sell_item_init
/* 80585C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585C74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80585C78  83 C1 00 08 */	lwz r30, 8(r1)
/* 80585C7C  7C 08 03 A6 */	mtlr r0
/* 80585C80  38 21 00 10 */	addi r1, r1, 0x10
/* 80585C84  4E 80 00 20 */	blr 
