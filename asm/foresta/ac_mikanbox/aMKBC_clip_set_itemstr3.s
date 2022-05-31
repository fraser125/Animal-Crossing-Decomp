lbl_805B3B5C:
/* 805B3B5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B3B60  7C 08 02 A6 */	mflr r0
/* 805B3B64  38 60 00 47 */	li r3, 0x47
/* 805B3B68  38 80 00 0A */	li r4, 0xa
/* 805B3B6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B3B70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B3B74  4B DE A2 59 */	bl mEv_get_save_area
/* 805B3B78  7C 7F 1B 78 */	mr r31, r3
/* 805B3B7C  4B E0 BB 2D */	bl func_803BF6A8
/* 805B3B80  38 BF 00 04 */	addi r5, r31, 4
/* 805B3B84  38 80 00 00 */	li r4, 0
/* 805B3B88  38 C0 00 10 */	li r6, 0x10
/* 805B3B8C  4B E0 C2 49 */	bl mMsg_Set_item_str
/* 805B3B90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B3B94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B3B98  7C 08 03 A6 */	mtlr r0
/* 805B3B9C  38 21 00 10 */	addi r1, r1, 0x10
/* 805B3BA0  4E 80 00 20 */	blr 
