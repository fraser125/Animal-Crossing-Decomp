lbl_805B1CD8:
/* 805B1CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B1CDC  7C 08 02 A6 */	mflr r0
/* 805B1CE0  38 80 00 00 */	li r4, 0
/* 805B1CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B1CE8  48 00 00 15 */	bl func_805B1CFC
/* 805B1CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B1CF0  7C 08 03 A6 */	mtlr r0
/* 805B1CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 805B1CF8  4E 80 00 20 */	blr 
