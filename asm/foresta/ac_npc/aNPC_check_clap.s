lbl_80535CB4:
/* 80535CB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80535CB8  7C 08 02 A6 */	mflr r0
/* 80535CBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80535CC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80535CC4  4B B6 52 11 */	bl func_8009AED4
/* 80535CC8  A0 03 00 06 */	lhz r0, 6(r3)
/* 80535CCC  7C 7D 1B 78 */	mr r29, r3
/* 80535CD0  7C 9E 23 78 */	mr r30, r4
/* 80535CD4  3B E0 00 00 */	li r31, 0
/* 80535CD8  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80535CDC  2C 00 00 0E */	cmpwi r0, 0xe
/* 80535CE0  40 82 00 6C */	bne lbl_80535D4C
/* 80535CE4  4B FF 6B 5D */	bl func_8052C840
/* 80535CE8  2C 03 00 00 */	cmpwi r3, 0
/* 80535CEC  40 82 00 60 */	bne lbl_80535D4C
/* 80535CF0  7F C3 F3 78 */	mr r3, r30
/* 80535CF4  4B EA 88 2D */	bl mPlib_check_player_actor_main_index_catch_insect
/* 80535CF8  2C 03 00 00 */	cmpwi r3, 0
/* 80535CFC  40 82 00 14 */	bne lbl_80535D10
/* 80535D00  7F C3 F3 78 */	mr r3, r30
/* 80535D04  4B EA 88 A5 */	bl mPlib_check_player_actor_main_index_catch_fish
/* 80535D08  2C 03 00 00 */	cmpwi r3, 0
/* 80535D0C  41 82 00 40 */	beq lbl_80535D4C
lbl_80535D10:
/* 80535D10  3C 60 80 65 */	lis r3, lit_1151@ha /* 0x806492A4@ha */
/* 80535D14  C0 3D 00 BC */	lfs f1, 0xbc(r29)
/* 80535D18  C0 03 92 A4 */	lfs f0, lit_1151@l(r3)  /* 0x806492A4@l */
/* 80535D1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80535D20  40 80 00 2C */	bge lbl_80535D4C
/* 80535D24  A8 7D 00 B6 */	lha r3, 0xb6(r29)
/* 80535D28  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 80535D2C  7C 03 00 50 */	subf r0, r3, r0
/* 80535D30  7C 03 07 35 */	extsh. r3, r0
/* 80535D34  7C 03 00 D0 */	neg r0, r3
/* 80535D38  41 80 00 08 */	blt lbl_80535D40
/* 80535D3C  7C 60 1B 78 */	mr r0, r3
lbl_80535D40:
/* 80535D40  2C 00 30 00 */	cmpwi r0, 0x3000
/* 80535D44  40 80 00 08 */	bge lbl_80535D4C
/* 80535D48  3B E0 00 01 */	li r31, 1
lbl_80535D4C:
/* 80535D4C  7F E3 FB 78 */	mr r3, r31
/* 80535D50  39 61 00 20 */	addi r11, r1, 0x20
/* 80535D54  4B B6 51 CD */	bl func_8009AF20
/* 80535D58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80535D5C  7C 08 03 A6 */	mtlr r0
/* 80535D60  38 21 00 20 */	addi r1, r1, 0x20
/* 80535D64  4E 80 00 20 */	blr 
