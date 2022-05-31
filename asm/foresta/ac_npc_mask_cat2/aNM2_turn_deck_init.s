lbl_80560ACC:
/* 80560ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80560AD0  7C 08 02 A6 */	mflr r0
/* 80560AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80560AD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80560ADC  7C 7F 1B 78 */	mr r31, r3
/* 80560AE0  4B FF ED D5 */	bl aNM2_set_stop_spd
/* 80560AE4  3C 60 80 65 */	lis r3, lit_748@ha /* 0x80649760@ha */
/* 80560AE8  C0 03 97 60 */	lfs f0, lit_748@l(r3)  /* 0x80649760@l */
/* 80560AEC  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80560AF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80560AF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80560AF8  7C 08 03 A6 */	mtlr r0
/* 80560AFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80560B00  4E 80 00 20 */	blr 
