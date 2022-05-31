lbl_8054619C:
/* 8054619C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805461A0  7C 08 02 A6 */	mflr r0
/* 805461A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805461A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805461AC  93 C1 00 08 */	stw r30, 8(r1)
/* 805461B0  7C 7E 1B 78 */	mr r30, r3
/* 805461B4  4B E7 94 F5 */	bl func_803BF6A8
/* 805461B8  38 BE 0A 07 */	addi r5, r30, 0xa07
/* 805461BC  7C 7F 1B 78 */	mr r31, r3
/* 805461C0  38 80 00 06 */	li r4, 6
/* 805461C4  38 C0 00 08 */	li r6, 8
/* 805461C8  4B E7 9A 8D */	bl mMsg_Set_free_str
/* 805461CC  7F E3 FB 78 */	mr r3, r31
/* 805461D0  38 BE 09 FF */	addi r5, r30, 0x9ff
/* 805461D4  38 80 00 07 */	li r4, 7
/* 805461D8  38 C0 00 08 */	li r6, 8
/* 805461DC  4B E7 9A 79 */	bl mMsg_Set_free_str
/* 805461E0  A0 7E 09 F8 */	lhz r3, 0x9f8(r30)
/* 805461E4  38 80 00 02 */	li r4, 2
/* 805461E8  4B FF FE 99 */	bl aNSC_set_item_name_str
/* 805461EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805461F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805461F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805461F8  7C 08 03 A6 */	mtlr r0
/* 805461FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80546200  4E 80 00 20 */	blr 
