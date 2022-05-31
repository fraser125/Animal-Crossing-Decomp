lbl_803B1CDC:
/* 803B1CDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B1CE0  7C 08 02 A6 */	mflr r0
/* 803B1CE4  7C E8 3B 78 */	mr r8, r7
/* 803B1CE8  38 E0 00 00 */	li r7, 0
/* 803B1CEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B1CF0  4B FF FE 59 */	bl mHandbill_Put_String_FREE
/* 803B1CF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B1CF8  7C 08 03 A6 */	mtlr r0
/* 803B1CFC  38 21 00 10 */	addi r1, r1, 0x10
/* 803B1D00  4E 80 00 20 */	blr 
