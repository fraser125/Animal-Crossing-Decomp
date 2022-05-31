lbl_803BF7D8:
/* 803BF7D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF7DC  7C 08 02 A6 */	mflr r0
/* 803BF7E0  38 80 00 00 */	li r4, 0
/* 803BF7E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF7E8  4B FF FF 45 */	bl mMsg_Check_main_index
/* 803BF7EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BF7F0  7C 08 03 A6 */	mtlr r0
/* 803BF7F4  38 21 00 10 */	addi r1, r1, 0x10
/* 803BF7F8  4E 80 00 20 */	blr 
