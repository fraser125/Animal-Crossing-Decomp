lbl_803DE420:
/* 803DE420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DE424  7C 08 02 A6 */	mflr r0
/* 803DE428  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DE42C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DE430  7C 7F 1B 78 */	mr r31, r3
/* 803DE434  4B FF B2 3D */	bl mPlib_get_player_actor_main_index
/* 803DE438  2C 03 00 00 */	cmpwi r3, 0
/* 803DE43C  41 82 00 54 */	beq lbl_803DE490
/* 803DE440  7F E3 FB 78 */	mr r3, r31
/* 803DE444  4B FF B2 2D */	bl mPlib_get_player_actor_main_index
/* 803DE448  2C 03 00 01 */	cmpwi r3, 1
/* 803DE44C  41 82 00 44 */	beq lbl_803DE490
/* 803DE450  7F E3 FB 78 */	mr r3, r31
/* 803DE454  4B FF B2 1D */	bl mPlib_get_player_actor_main_index
/* 803DE458  2C 03 00 11 */	cmpwi r3, 0x11
/* 803DE45C  41 82 00 34 */	beq lbl_803DE490
/* 803DE460  7F E3 FB 78 */	mr r3, r31
/* 803DE464  4B FF B2 0D */	bl mPlib_get_player_actor_main_index
/* 803DE468  2C 03 00 05 */	cmpwi r3, 5
/* 803DE46C  41 82 00 24 */	beq lbl_803DE490
/* 803DE470  7F E3 FB 78 */	mr r3, r31
/* 803DE474  4B FF B1 FD */	bl mPlib_get_player_actor_main_index
/* 803DE478  2C 03 00 69 */	cmpwi r3, 0x69
/* 803DE47C  41 82 00 14 */	beq lbl_803DE490
/* 803DE480  7F E3 FB 78 */	mr r3, r31
/* 803DE484  4B FF B1 ED */	bl mPlib_get_player_actor_main_index
/* 803DE488  2C 03 00 48 */	cmpwi r3, 0x48
/* 803DE48C  40 82 00 0C */	bne lbl_803DE498
lbl_803DE490:
/* 803DE490  38 60 00 01 */	li r3, 1
/* 803DE494  48 00 00 08 */	b lbl_803DE49C
lbl_803DE498:
/* 803DE498  38 60 00 00 */	li r3, 0
lbl_803DE49C:
/* 803DE49C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DE4A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DE4A4  7C 08 03 A6 */	mtlr r0
/* 803DE4A8  38 21 00 10 */	addi r1, r1, 0x10
/* 803DE4AC  4E 80 00 20 */	blr 
