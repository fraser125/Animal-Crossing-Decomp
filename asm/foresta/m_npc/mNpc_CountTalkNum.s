lbl_803D35C4:
/* 803D35C4  2C 03 00 00 */	cmpwi r3, 0
/* 803D35C8  39 00 00 00 */	li r8, 0
/* 803D35CC  41 80 00 54 */	blt lbl_803D3620
/* 803D35D0  2C 03 00 10 */	cmpwi r3, 0x10
/* 803D35D4  40 80 00 4C */	bge lbl_803D3620
/* 803D35D8  3C C0 81 17 */	lis r6, l_npc_talk_info@ha /* 0x8116C5AC@ha */
/* 803D35DC  3C A0 80 66 */	lis r5, l_npc_temper@ha /* 0x8065B38C@ha */
/* 803D35E0  54 67 18 38 */	slwi r7, r3, 3
/* 803D35E4  54 80 10 3A */	slwi r0, r4, 2
/* 803D35E8  38 86 C5 AC */	addi r4, r6, l_npc_talk_info@l /* 0x8116C5AC@l */
/* 803D35EC  38 65 B3 8C */	addi r3, r5, l_npc_temper@l /* 0x8065B38C@l */
/* 803D35F0  7C A4 3A 14 */	add r5, r4, r7
/* 803D35F4  7C 63 02 14 */	add r3, r3, r0
/* 803D35F8  88 85 00 02 */	lbz r4, 2(r5)
/* 803D35FC  88 03 00 03 */	lbz r0, 3(r3)
/* 803D3600  7C 04 00 40 */	cmplw r4, r0
/* 803D3604  40 80 00 1C */	bge lbl_803D3620
/* 803D3608  A0 05 00 00 */	lhz r0, 0(r5)
/* 803D360C  28 00 00 00 */	cmplwi r0, 0
/* 803D3610  41 82 00 10 */	beq lbl_803D3620
/* 803D3614  38 04 00 01 */	addi r0, r4, 1
/* 803D3618  39 00 00 01 */	li r8, 1
/* 803D361C  98 05 00 02 */	stb r0, 2(r5)
lbl_803D3620:
/* 803D3620  7D 03 43 78 */	mr r3, r8
/* 803D3624  4E 80 00 20 */	blr 
