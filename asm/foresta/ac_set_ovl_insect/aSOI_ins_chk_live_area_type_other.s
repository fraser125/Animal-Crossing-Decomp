lbl_8049BF74:
/* 8049BF74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049BF78  7C 08 02 A6 */	mflr r0
/* 8049BF7C  7D 23 4B 78 */	mr r3, r9
/* 8049BF80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049BF84  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8049BF88  4B FF F7 2D */	bl aSOI_ins_field_attr_check_get
/* 8049BF8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049BF90  7C 08 03 A6 */	mtlr r0
/* 8049BF94  38 21 00 10 */	addi r1, r1, 0x10
/* 8049BF98  4E 80 00 20 */	blr 
