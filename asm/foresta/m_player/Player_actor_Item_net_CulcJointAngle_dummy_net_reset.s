lbl_804E16CC:
/* 804E16CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E16D0  7C 08 02 A6 */	mflr r0
/* 804E16D4  3C 80 80 64 */	lis r4, lit_6171@ha /* 0x80647DDC@ha */
/* 804E16D8  3C C0 80 64 */	lis r6, basic_angle_6169@ha /* 0x80647DD4@ha */
/* 804E16DC  38 A4 7D DC */	addi r5, r4, lit_6171@l /* 0x80647DDC@l */
/* 804E16E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E16E4  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E16E8  38 86 7D D4 */	addi r4, r6, basic_angle_6169@l /* 0x80647DD4@l */
/* 804E16EC  38 63 0E 5C */	addi r3, r3, 0xe5c
/* 804E16F0  38 A0 0A AA */	li r5, 0xaaa
/* 804E16F4  38 C0 00 64 */	li r6, 0x64
/* 804E16F8  4B FF FD A1 */	bl func_804E1498
/* 804E16FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1700  7C 08 03 A6 */	mtlr r0
/* 804E1704  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1708  4E 80 00 20 */	blr 
