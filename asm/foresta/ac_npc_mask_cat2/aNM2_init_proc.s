lbl_80560DBC:
/* 80560DBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80560DC0  7C 08 02 A6 */	mflr r0
/* 80560DC4  3C C0 80 6B */	lis r6, init_proc@ha /* 0x806AA448@ha */
/* 80560DC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80560DCC  54 A0 10 3A */	slwi r0, r5, 2
/* 80560DD0  38 A6 A4 48 */	addi r5, r6, init_proc@l /* 0x806AA448@l */
/* 80560DD4  7D 85 00 2E */	lwzx r12, r5, r0
/* 80560DD8  7D 89 03 A6 */	mtctr r12
/* 80560DDC  4E 80 04 21 */	bctrl 
/* 80560DE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80560DE4  7C 08 03 A6 */	mtlr r0
/* 80560DE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80560DEC  4E 80 00 20 */	blr 
