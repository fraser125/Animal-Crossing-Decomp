lbl_804F01BC:
/* 804F01BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F01C0  7C 08 02 A6 */	mflr r0
/* 804F01C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F01C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F01CC  7C 9F 23 78 */	mr r31, r4
/* 804F01D0  7C A4 2B 78 */	mr r4, r5
/* 804F01D4  93 C1 00 08 */	stw r30, 8(r1)
/* 804F01D8  7C 7E 1B 78 */	mr r30, r3
/* 804F01DC  4B FF FF C1 */	bl Player_actor_SetSound_AXE_FURI_Swing_axe
/* 804F01E0  3C 80 80 64 */	lis r4, lit_3046@ha /* 0x80646E54@ha */
/* 804F01E4  38 7E 01 74 */	addi r3, r30, 0x174
/* 804F01E8  C0 24 6E 54 */	lfs f1, lit_3046@l(r4)  /* 0x80646E54@l */
/* 804F01EC  4B FE 74 15 */	bl Player_actor_Check_AnimationFrame
/* 804F01F0  2C 03 00 00 */	cmpwi r3, 0
/* 804F01F4  41 82 00 10 */	beq lbl_804F0204
/* 804F01F8  7F C3 F3 78 */	mr r3, r30
/* 804F01FC  7F E4 FB 78 */	mr r4, r31
/* 804F0200  4B FE F3 19 */	bl Player_actor_sound_AXE_CUT
lbl_804F0204:
/* 804F0204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F0208  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F020C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F0210  7C 08 03 A6 */	mtlr r0
/* 804F0214  38 21 00 10 */	addi r1, r1, 0x10
/* 804F0218  4E 80 00 20 */	blr 
