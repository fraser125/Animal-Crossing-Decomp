lbl_804AA668:
/* 804AA668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AA66C  7C 08 02 A6 */	mflr r0
/* 804AA670  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AA674  4B EC 9D CD */	bl Actor_delete
/* 804AA678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AA67C  7C 08 03 A6 */	mtlr r0
/* 804AA680  38 21 00 10 */	addi r1, r1, 0x10
/* 804AA684  4E 80 00 20 */	blr 
