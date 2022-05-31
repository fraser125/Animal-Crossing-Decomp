lbl_803D44E4:
/* 803D44E4  3C 80 81 17 */	lis r4, l_island_npc_room_data@ha /* 0x8116C6AC@ha */
/* 803D44E8  38 00 00 12 */	li r0, 0x12
/* 803D44EC  38 84 C6 AC */	addi r4, r4, l_island_npc_room_data@l /* 0x8116C6AC@l */
/* 803D44F0  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 803D44F4  7C 86 23 78 */	mr r6, r4
/* 803D44F8  38 60 00 00 */	li r3, 0
/* 803D44FC  7C 09 03 A6 */	mtctr r0
lbl_803D4500:
/* 803D4500  A0 06 02 08 */	lhz r0, 0x208(r6)
/* 803D4504  30 85 FF FF */	addic r4, r5, -1
/* 803D4508  7C 84 29 10 */	subfe r4, r4, r5
/* 803D450C  7C 00 28 50 */	subf r0, r0, r5
/* 803D4510  7C 00 00 34 */	cntlzw r0, r0
/* 803D4514  54 00 D9 7E */	srwi r0, r0, 5
/* 803D4518  7C 80 00 39 */	and. r0, r4, r0
/* 803D451C  41 82 00 0C */	beq lbl_803D4528
/* 803D4520  7C C3 33 78 */	mr r3, r6
/* 803D4524  4E 80 00 20 */	blr 
lbl_803D4528:
/* 803D4528  38 C6 02 0C */	addi r6, r6, 0x20c
/* 803D452C  42 00 FF D4 */	bdnz lbl_803D4500
/* 803D4530  4E 80 00 20 */	blr 
