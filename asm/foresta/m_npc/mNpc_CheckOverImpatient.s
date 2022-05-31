lbl_803D3628:
/* 803D3628  2C 03 00 00 */	cmpwi r3, 0
/* 803D362C  39 00 00 00 */	li r8, 0
/* 803D3630  41 80 00 40 */	blt lbl_803D3670
/* 803D3634  2C 03 00 10 */	cmpwi r3, 0x10
/* 803D3638  40 80 00 38 */	bge lbl_803D3670
/* 803D363C  3C C0 81 17 */	lis r6, l_npc_talk_info@ha /* 0x8116C5AC@ha */
/* 803D3640  3C A0 80 66 */	lis r5, l_npc_temper@ha /* 0x8065B38C@ha */
/* 803D3644  54 67 18 38 */	slwi r7, r3, 3
/* 803D3648  54 80 10 3A */	slwi r0, r4, 2
/* 803D364C  38 86 C5 AC */	addi r4, r6, l_npc_talk_info@l /* 0x8116C5AC@l */
/* 803D3650  38 65 B3 8C */	addi r3, r5, l_npc_temper@l /* 0x8065B38C@l */
/* 803D3654  7C 84 3A 14 */	add r4, r4, r7
/* 803D3658  7C 63 02 14 */	add r3, r3, r0
/* 803D365C  88 84 00 02 */	lbz r4, 2(r4)
/* 803D3660  88 03 00 02 */	lbz r0, 2(r3)
/* 803D3664  7C 04 00 40 */	cmplw r4, r0
/* 803D3668  41 80 00 08 */	blt lbl_803D3670
/* 803D366C  39 00 00 01 */	li r8, 1
lbl_803D3670:
/* 803D3670  7D 03 43 78 */	mr r3, r8
/* 803D3674  4E 80 00 20 */	blr 
