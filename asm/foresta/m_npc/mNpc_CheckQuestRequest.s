lbl_803D36DC:
/* 803D36DC  2C 03 00 00 */	cmpwi r3, 0
/* 803D36E0  38 A0 00 00 */	li r5, 0
/* 803D36E4  41 80 00 2C */	blt lbl_803D3710
/* 803D36E8  2C 03 00 10 */	cmpwi r3, 0x10
/* 803D36EC  40 80 00 24 */	bge lbl_803D3710
/* 803D36F0  3C 80 81 17 */	lis r4, l_npc_talk_info@ha /* 0x8116C5AC@ha */
/* 803D36F4  54 63 18 38 */	slwi r3, r3, 3
/* 803D36F8  38 04 C5 AC */	addi r0, r4, l_npc_talk_info@l /* 0x8116C5AC@l */
/* 803D36FC  7C 60 1A 14 */	add r3, r0, r3
/* 803D3700  88 03 00 03 */	lbz r0, 3(r3)
/* 803D3704  28 00 00 01 */	cmplwi r0, 1
/* 803D3708  40 82 00 08 */	bne lbl_803D3710
/* 803D370C  38 A0 00 01 */	li r5, 1
lbl_803D3710:
/* 803D3710  7C A3 2B 78 */	mr r3, r5
/* 803D3714  4E 80 00 20 */	blr 
