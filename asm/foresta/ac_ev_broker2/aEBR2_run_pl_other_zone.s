lbl_8051B4E0:
/* 8051B4E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051B4E4  7C 08 02 A6 */	mflr r0
/* 8051B4E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B4EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051B4F0  7C 9F 23 78 */	mr r31, r4
/* 8051B4F4  93 C1 00 08 */	stw r30, 8(r1)
/* 8051B4F8  7C 7E 1B 78 */	mr r30, r3
/* 8051B4FC  4B FF FC 59 */	bl aEBR2_message_ctrl
/* 8051B500  2C 03 00 01 */	cmpwi r3, 1
/* 8051B504  41 82 00 38 */	beq lbl_8051B53C
/* 8051B508  7F C3 F3 78 */	mr r3, r30
/* 8051B50C  7F E4 FB 78 */	mr r4, r31
/* 8051B510  4B FF F8 05 */	bl aEBR2_decide_next_move_act
/* 8051B514  80 1E 09 94 */	lwz r0, 0x994(r30)
/* 8051B518  7C 64 1B 78 */	mr r4, r3
/* 8051B51C  7C 04 00 00 */	cmpw r4, r0
/* 8051B520  41 82 00 10 */	beq lbl_8051B530
/* 8051B524  7F C3 F3 78 */	mr r3, r30
/* 8051B528  48 00 06 3D */	bl aEBR2_setupAction
/* 8051B52C  48 00 00 10 */	b lbl_8051B53C
lbl_8051B530:
/* 8051B530  7F C3 F3 78 */	mr r3, r30
/* 8051B534  7F E4 FB 78 */	mr r4, r31
/* 8051B538  4B FF F9 49 */	bl aEBR2_search_player2
lbl_8051B53C:
/* 8051B53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051B540  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051B544  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051B548  7C 08 03 A6 */	mtlr r0
/* 8051B54C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051B550  4E 80 00 20 */	blr 
