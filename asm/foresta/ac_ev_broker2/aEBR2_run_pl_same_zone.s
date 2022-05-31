lbl_8051B46C:
/* 8051B46C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051B470  7C 08 02 A6 */	mflr r0
/* 8051B474  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B478  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051B47C  7C 9F 23 78 */	mr r31, r4
/* 8051B480  93 C1 00 08 */	stw r30, 8(r1)
/* 8051B484  7C 7E 1B 78 */	mr r30, r3
/* 8051B488  4B FF FC CD */	bl aEBR2_message_ctrl
/* 8051B48C  2C 03 00 01 */	cmpwi r3, 1
/* 8051B490  41 82 00 38 */	beq lbl_8051B4C8
/* 8051B494  7F C3 F3 78 */	mr r3, r30
/* 8051B498  7F E4 FB 78 */	mr r4, r31
/* 8051B49C  4B FF F8 79 */	bl aEBR2_decide_next_move_act
/* 8051B4A0  80 1E 09 94 */	lwz r0, 0x994(r30)
/* 8051B4A4  7C 64 1B 78 */	mr r4, r3
/* 8051B4A8  7C 04 00 00 */	cmpw r4, r0
/* 8051B4AC  41 82 00 10 */	beq lbl_8051B4BC
/* 8051B4B0  7F C3 F3 78 */	mr r3, r30
/* 8051B4B4  48 00 06 B1 */	bl aEBR2_setupAction
/* 8051B4B8  48 00 00 10 */	b lbl_8051B4C8
lbl_8051B4BC:
/* 8051B4BC  7F C3 F3 78 */	mr r3, r30
/* 8051B4C0  7F E4 FB 78 */	mr r4, r31
/* 8051B4C4  4B FF F9 3D */	bl aEBR2_search_player
lbl_8051B4C8:
/* 8051B4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051B4CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051B4D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051B4D4  7C 08 03 A6 */	mtlr r0
/* 8051B4D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8051B4DC  4E 80 00 20 */	blr 
