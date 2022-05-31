lbl_8055E260:
/* 8055E260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055E264  7C 08 02 A6 */	mflr r0
/* 8055E268  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055E26C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055E270  7C 9F 23 78 */	mr r31, r4
/* 8055E274  93 C1 00 08 */	stw r30, 8(r1)
/* 8055E278  7C 7E 1B 78 */	mr r30, r3
/* 8055E27C  4B FF DB A9 */	bl aNSC_message_ctrl
/* 8055E280  2C 03 00 01 */	cmpwi r3, 1
/* 8055E284  41 82 00 3C */	beq lbl_8055E2C0
/* 8055E288  7F C3 F3 78 */	mr r3, r30
/* 8055E28C  7F E4 FB 78 */	mr r4, r31
/* 8055E290  4B FF CB C9 */	bl aNSC_decide_next_move_act
/* 8055E294  80 1E 09 94 */	lwz r0, 0x994(r30)
/* 8055E298  7C 65 1B 78 */	mr r5, r3
/* 8055E29C  7C 05 00 00 */	cmpw r5, r0
/* 8055E2A0  41 82 00 14 */	beq lbl_8055E2B4
/* 8055E2A4  7F C3 F3 78 */	mr r3, r30
/* 8055E2A8  7F E4 FB 78 */	mr r4, r31
/* 8055E2AC  48 00 0B 25 */	bl aNSC_setupAction
/* 8055E2B0  48 00 00 10 */	b lbl_8055E2C0
lbl_8055E2B4:
/* 8055E2B4  7F C3 F3 78 */	mr r3, r30
/* 8055E2B8  7F E4 FB 78 */	mr r4, r31
/* 8055E2BC  4B FF BE FD */	bl aNMD_search_player2
lbl_8055E2C0:
/* 8055E2C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055E2C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055E2C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055E2CC  7C 08 03 A6 */	mtlr r0
/* 8055E2D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8055E2D4  4E 80 00 20 */	blr 
