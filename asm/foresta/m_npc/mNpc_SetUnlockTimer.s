lbl_803D35A4:
/* 803D35A4  3C C0 80 66 */	lis r6, l_npc_temper@ha /* 0x8065B38C@ha */
/* 803D35A8  54 A0 10 3A */	slwi r0, r5, 2
/* 803D35AC  38 A6 B3 8C */	addi r5, r6, l_npc_temper@l /* 0x8065B38C@l */
/* 803D35B0  7C 05 02 2E */	lhzx r0, r5, r0
/* 803D35B4  B0 03 00 00 */	sth r0, 0(r3)
/* 803D35B8  A0 03 00 00 */	lhz r0, 0(r3)
/* 803D35BC  B0 04 00 00 */	sth r0, 0(r4)
/* 803D35C0  4E 80 00 20 */	blr 
