lbl_8049BD54:
/* 8049BD54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049BD58  7C 08 02 A6 */	mflr r0
/* 8049BD5C  7C A3 2B 78 */	mr r3, r5
/* 8049BD60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049BD64  4B FF F9 ED */	bl aSOI_ins_field_tree_check_get
/* 8049BD68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049BD6C  7C 08 03 A6 */	mtlr r0
/* 8049BD70  38 21 00 10 */	addi r1, r1, 0x10
/* 8049BD74  4E 80 00 20 */	blr 
