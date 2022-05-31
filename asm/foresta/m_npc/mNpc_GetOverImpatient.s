lbl_803D3678:
/* 803D3678  2C 03 00 00 */	cmpwi r3, 0
/* 803D367C  39 20 00 02 */	li r9, 2
/* 803D3680  41 80 00 54 */	blt lbl_803D36D4
/* 803D3684  2C 03 00 10 */	cmpwi r3, 0x10
/* 803D3688  40 80 00 4C */	bge lbl_803D36D4
/* 803D368C  3C C0 81 17 */	lis r6, l_npc_talk_info@ha /* 0x8116C5AC@ha */
/* 803D3690  3C A0 80 66 */	lis r5, l_npc_temper@ha /* 0x8065B38C@ha */
/* 803D3694  54 67 18 38 */	slwi r7, r3, 3
/* 803D3698  54 88 10 3A */	slwi r8, r4, 2
/* 803D369C  38 66 C5 AC */	addi r3, r6, l_npc_talk_info@l /* 0x8116C5AC@l */
/* 803D36A0  38 05 B3 8C */	addi r0, r5, l_npc_temper@l /* 0x8065B38C@l */
/* 803D36A4  7C 83 3A 14 */	add r4, r3, r7
/* 803D36A8  7C 60 42 14 */	add r3, r0, r8
/* 803D36AC  88 84 00 02 */	lbz r4, 2(r4)
/* 803D36B0  88 03 00 02 */	lbz r0, 2(r3)
/* 803D36B4  7C 04 00 40 */	cmplw r4, r0
/* 803D36B8  41 80 00 1C */	blt lbl_803D36D4
/* 803D36BC  88 03 00 03 */	lbz r0, 3(r3)
/* 803D36C0  7C 04 00 40 */	cmplw r4, r0
/* 803D36C4  41 80 00 0C */	blt lbl_803D36D0
/* 803D36C8  39 20 00 01 */	li r9, 1
/* 803D36CC  48 00 00 08 */	b lbl_803D36D4
lbl_803D36D0:
/* 803D36D0  39 20 00 00 */	li r9, 0
lbl_803D36D4:
/* 803D36D4  7D 23 4B 78 */	mr r3, r9
/* 803D36D8  4E 80 00 20 */	blr 
