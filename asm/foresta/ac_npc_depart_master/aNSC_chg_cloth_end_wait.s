lbl_80551198:
/* 80551198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055119C  7C 08 02 A6 */	mflr r0
/* 805511A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805511A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805511A8  7C 9F 23 78 */	mr r31, r4
/* 805511AC  93 C1 00 08 */	stw r30, 8(r1)
/* 805511B0  7C 7E 1B 78 */	mr r30, r3
/* 805511B4  7F E3 FB 78 */	mr r3, r31
/* 805511B8  4B E8 84 B9 */	bl mPlib_get_player_actor_main_index
/* 805511BC  2C 03 00 65 */	cmpwi r3, 0x65
/* 805511C0  41 82 00 1C */	beq lbl_805511DC
/* 805511C4  4B E6 E4 E5 */	bl func_803BF6A8
/* 805511C8  4B E6 FB 85 */	bl mMsg_Unset_LockContinue
/* 805511CC  80 BE 09 98 */	lwz r5, 0x998(r30)
/* 805511D0  7F C3 F3 78 */	mr r3, r30
/* 805511D4  7F E4 FB 78 */	mr r4, r31
/* 805511D8  48 00 16 5D */	bl aNSC_setupAction
lbl_805511DC:
/* 805511DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805511E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805511E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805511E8  7C 08 03 A6 */	mtlr r0
/* 805511EC  38 21 00 10 */	addi r1, r1, 0x10
/* 805511F0  4E 80 00 20 */	blr 
