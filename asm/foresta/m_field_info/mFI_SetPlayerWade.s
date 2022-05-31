lbl_803A8A90:
/* 803A8A90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A8A94  7C 08 02 A6 */	mflr r0
/* 803A8A98  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A8A9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A8AA0  7C 7F 1B 78 */	mr r31, r3
/* 803A8AA4  48 03 0B 9D */	bl get_player_actor_withoutCheck
/* 803A8AA8  28 03 00 00 */	cmplwi r3, 0
/* 803A8AAC  41 82 00 70 */	beq lbl_803A8B1C
/* 803A8AB0  7F E3 FB 78 */	mr r3, r31
/* 803A8AB4  48 03 59 FD */	bl mPlib_check_player_actor_main_index_AllWade
/* 803A8AB8  2C 03 00 01 */	cmpwi r3, 1
/* 803A8ABC  40 82 00 38 */	bne lbl_803A8AF4
/* 803A8AC0  3C 60 81 16 */	lis r3, l_player_wade@ha /* 0x81167CA4@ha */
/* 803A8AC4  84 03 7C A4 */	lwzu r0, l_player_wade@l(r3)  /* 0x81167CA4@l */
/* 803A8AC8  2C 00 00 00 */	cmpwi r0, 0
/* 803A8ACC  41 82 00 0C */	beq lbl_803A8AD8
/* 803A8AD0  2C 00 00 03 */	cmpwi r0, 3
/* 803A8AD4  40 82 00 14 */	bne lbl_803A8AE8
lbl_803A8AD8:
/* 803A8AD8  3C 60 81 16 */	lis r3, l_player_wade@ha /* 0x81167CA4@ha */
/* 803A8ADC  38 00 00 01 */	li r0, 1
/* 803A8AE0  90 03 7C A4 */	stw r0, l_player_wade@l(r3)  /* 0x81167CA4@l */
/* 803A8AE4  48 00 00 44 */	b lbl_803A8B28
lbl_803A8AE8:
/* 803A8AE8  38 00 00 02 */	li r0, 2
/* 803A8AEC  90 03 00 00 */	stw r0, 0(r3)
/* 803A8AF0  48 00 00 38 */	b lbl_803A8B28
lbl_803A8AF4:
/* 803A8AF4  3C 60 81 16 */	lis r3, l_player_wade@ha /* 0x81167CA4@ha */
/* 803A8AF8  84 03 7C A4 */	lwzu r0, l_player_wade@l(r3)  /* 0x81167CA4@l */
/* 803A8AFC  2C 00 00 02 */	cmpwi r0, 2
/* 803A8B00  40 82 00 10 */	bne lbl_803A8B10
/* 803A8B04  38 00 00 03 */	li r0, 3
/* 803A8B08  90 03 00 00 */	stw r0, 0(r3)
/* 803A8B0C  48 00 00 1C */	b lbl_803A8B28
lbl_803A8B10:
/* 803A8B10  38 00 00 00 */	li r0, 0
/* 803A8B14  90 03 00 00 */	stw r0, 0(r3)
/* 803A8B18  48 00 00 10 */	b lbl_803A8B28
lbl_803A8B1C:
/* 803A8B1C  3C 60 81 16 */	lis r3, l_player_wade@ha /* 0x81167CA4@ha */
/* 803A8B20  38 00 00 04 */	li r0, 4
/* 803A8B24  90 03 7C A4 */	stw r0, l_player_wade@l(r3)  /* 0x81167CA4@l */
lbl_803A8B28:
/* 803A8B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A8B2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A8B30  7C 08 03 A6 */	mtlr r0
/* 803A8B34  38 21 00 10 */	addi r1, r1, 0x10
/* 803A8B38  4E 80 00 20 */	blr 
