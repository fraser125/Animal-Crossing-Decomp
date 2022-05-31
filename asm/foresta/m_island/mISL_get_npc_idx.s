lbl_803B41DC:
/* 803B41DC  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803B41E0  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803B41E4  3C A0 80 65 */	lis r5, l_misl_agb_npc_table@ha /* 0x80655260@ha */
/* 803B41E8  38 60 00 00 */	li r3, 0
/* 803B41EC  2C 00 00 0E */	cmpwi r0, 0xe
/* 803B41F0  38 05 52 60 */	addi r0, r5, l_misl_agb_npc_table@l /* 0x80655260@l */
/* 803B41F4  7C 05 03 78 */	mr r5, r0
/* 803B41F8  4C 82 00 20 */	bnelr 
/* 803B41FC  38 00 00 12 */	li r0, 0x12
/* 803B4200  38 C0 00 00 */	li r6, 0
/* 803B4204  7C 09 03 A6 */	mtctr r0
lbl_803B4208:
/* 803B4208  A0 05 00 00 */	lhz r0, 0(r5)
/* 803B420C  7C 00 20 40 */	cmplw r0, r4
/* 803B4210  40 82 00 0C */	bne lbl_803B421C
/* 803B4214  7C C3 33 78 */	mr r3, r6
/* 803B4218  4E 80 00 20 */	blr 
lbl_803B421C:
/* 803B421C  38 A5 00 02 */	addi r5, r5, 2
/* 803B4220  38 C6 00 01 */	addi r6, r6, 1
/* 803B4224  42 00 FF E4 */	bdnz lbl_803B4208
/* 803B4228  4E 80 00 20 */	blr 
