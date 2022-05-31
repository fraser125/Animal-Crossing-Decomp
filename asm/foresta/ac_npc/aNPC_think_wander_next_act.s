lbl_80536E90:
/* 80536E90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80536E94  7C 08 02 A6 */	mflr r0
/* 80536E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80536E9C  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 80536EA0  28 00 00 FF */	cmplwi r0, 0xff
/* 80536EA4  40 82 00 08 */	bne lbl_80536EAC
/* 80536EA8  4B FF FD 9D */	bl aNPC_think_wander_decide_next
lbl_80536EAC:
/* 80536EAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80536EB0  7C 08 03 A6 */	mtlr r0
/* 80536EB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80536EB8  4E 80 00 20 */	blr 
