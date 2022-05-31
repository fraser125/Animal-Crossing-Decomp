lbl_80383F98:
/* 80383F98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383F9C  7C 08 02 A6 */	mflr r0
/* 80383FA0  38 E0 00 0B */	li r7, 0xb
/* 80383FA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383FA8  4B FF FE 09 */	bl mChoice_Put_String_FREE
/* 80383FAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383FB0  7C 08 03 A6 */	mtlr r0
/* 80383FB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80383FB8  4E 80 00 20 */	blr 
