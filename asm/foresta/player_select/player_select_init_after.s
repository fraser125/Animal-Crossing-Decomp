lbl_8062C0C4:
/* 8062C0C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062C0C8  7C 08 02 A6 */	mflr r0
/* 8062C0CC  38 80 00 00 */	li r4, 0
/* 8062C0D0  38 A0 00 00 */	li r5, 0
/* 8062C0D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062C0D8  4B DC 28 5D */	bl mSDI_StartInitAfter
/* 8062C0DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062C0E0  7C 08 03 A6 */	mtlr r0
/* 8062C0E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8062C0E8  4E 80 00 20 */	blr 
