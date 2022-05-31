lbl_80383F74:
/* 80383F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383F78  7C 08 02 A6 */	mflr r0
/* 80383F7C  38 E0 00 0A */	li r7, 0xa
/* 80383F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383F84  4B FF FE 2D */	bl mChoice_Put_String_FREE
/* 80383F88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383F8C  7C 08 03 A6 */	mtlr r0
/* 80383F90  38 21 00 10 */	addi r1, r1, 0x10
/* 80383F94  4E 80 00 20 */	blr 
