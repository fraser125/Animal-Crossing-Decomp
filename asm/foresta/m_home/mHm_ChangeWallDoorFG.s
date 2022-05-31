lbl_803B3098:
/* 803B3098  2C 04 00 00 */	cmpwi r4, 0
/* 803B309C  41 80 00 0C */	blt lbl_803B30A8
/* 803B30A0  2C 04 00 04 */	cmpwi r4, 4
/* 803B30A4  41 80 00 08 */	blt lbl_803B30AC
lbl_803B30A8:
/* 803B30A8  38 80 00 00 */	li r4, 0
lbl_803B30AC:
/* 803B30AC  3C C0 80 65 */	lis r6, player_room_tmp_table@ha /* 0x80655218@ha */
/* 803B30B0  54 87 10 3A */	slwi r7, r4, 2
/* 803B30B4  38 86 52 18 */	addi r4, r6, player_room_tmp_table@l /* 0x80655218@l */
/* 803B30B8  38 00 01 00 */	li r0, 0x100
/* 803B30BC  7C C4 38 2E */	lwzx r6, r4, r7
/* 803B30C0  38 80 00 00 */	li r4, 0
/* 803B30C4  7C 09 03 A6 */	mtctr r0
lbl_803B30C8:
/* 803B30C8  A0 06 00 00 */	lhz r0, 0(r6)
/* 803B30CC  28 00 00 00 */	cmplwi r0, 0
/* 803B30D0  41 82 00 18 */	beq lbl_803B30E8
/* 803B30D4  2C 05 00 00 */	cmpwi r5, 0
/* 803B30D8  40 82 00 0C */	bne lbl_803B30E4
/* 803B30DC  B0 83 00 00 */	sth r4, 0(r3)
/* 803B30E0  48 00 00 08 */	b lbl_803B30E8
lbl_803B30E4:
/* 803B30E4  B0 03 00 00 */	sth r0, 0(r3)
lbl_803B30E8:
/* 803B30E8  38 C6 00 02 */	addi r6, r6, 2
/* 803B30EC  38 63 00 02 */	addi r3, r3, 2
/* 803B30F0  42 00 FF D8 */	bdnz lbl_803B30C8
/* 803B30F4  4E 80 00 20 */	blr 
