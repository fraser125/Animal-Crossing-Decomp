lbl_803D5D30:
/* 803D5D30  3C A0 81 17 */	lis r5, l_island_npc_room_data@ha /* 0x8116C6AC@ha */
/* 803D5D34  3C 80 80 66 */	lis r4, l_mnpc_island_md_table@ha /* 0x8065B3EC@ha */
/* 803D5D38  38 A5 C6 AC */	addi r5, r5, l_island_npc_room_data@l /* 0x8116C6AC@l */
/* 803D5D3C  38 00 00 12 */	li r0, 0x12
/* 803D5D40  7C A7 2B 78 */	mr r7, r5
/* 803D5D44  54 66 04 3E */	clrlwi r6, r3, 0x10
/* 803D5D48  38 A4 B3 EC */	addi r5, r4, l_mnpc_island_md_table@l /* 0x8065B3EC@l */
/* 803D5D4C  38 60 00 00 */	li r3, 0
/* 803D5D50  38 80 00 00 */	li r4, 0
/* 803D5D54  7C 09 03 A6 */	mtctr r0
lbl_803D5D58:
/* 803D5D58  A0 07 02 08 */	lhz r0, 0x208(r7)
/* 803D5D5C  7C 00 30 40 */	cmplw r0, r6
/* 803D5D60  40 82 00 14 */	bne lbl_803D5D74
/* 803D5D64  7C 65 22 2E */	lhzx r3, r5, r4
/* 803D5D68  38 03 D6 00 */	addi r0, r3, -10752
/* 803D5D6C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803D5D70  7C 03 03 78 */	mr r3, r0
lbl_803D5D74:
/* 803D5D74  38 E7 02 0C */	addi r7, r7, 0x20c
/* 803D5D78  38 84 00 02 */	addi r4, r4, 2
/* 803D5D7C  42 00 FF DC */	bdnz lbl_803D5D58
/* 803D5D80  4E 80 00 20 */	blr 
