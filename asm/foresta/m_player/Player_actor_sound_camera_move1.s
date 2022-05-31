lbl_804DFA7C:
/* 804DFA7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFA80  7C 08 02 A6 */	mflr r0
/* 804DFA84  38 60 04 0D */	li r3, 0x40d
/* 804DFA88  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFA8C  48 14 E2 79 */	bl sAdo_SysTrgStart
/* 804DFA90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFA94  7C 08 03 A6 */	mtlr r0
/* 804DFA98  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFA9C  4E 80 00 20 */	blr 
