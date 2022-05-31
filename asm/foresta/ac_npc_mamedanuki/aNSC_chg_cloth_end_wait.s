lbl_8055D890:
/* 8055D890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055D894  7C 08 02 A6 */	mflr r0
/* 8055D898  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055D89C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055D8A0  7C 9F 23 78 */	mr r31, r4
/* 8055D8A4  93 C1 00 08 */	stw r30, 8(r1)
/* 8055D8A8  7C 7E 1B 78 */	mr r30, r3
/* 8055D8AC  7F E3 FB 78 */	mr r3, r31
/* 8055D8B0  4B E7 BD C1 */	bl mPlib_get_player_actor_main_index
/* 8055D8B4  2C 03 00 65 */	cmpwi r3, 0x65
/* 8055D8B8  41 82 00 1C */	beq lbl_8055D8D4
/* 8055D8BC  4B E6 1D ED */	bl func_803BF6A8
/* 8055D8C0  4B E6 34 8D */	bl mMsg_Unset_LockContinue
/* 8055D8C4  80 BE 09 98 */	lwz r5, 0x998(r30)
/* 8055D8C8  7F C3 F3 78 */	mr r3, r30
/* 8055D8CC  7F E4 FB 78 */	mr r4, r31
/* 8055D8D0  48 00 15 01 */	bl aNSC_setupAction
lbl_8055D8D4:
/* 8055D8D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055D8D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055D8DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055D8E0  7C 08 03 A6 */	mtlr r0
/* 8055D8E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8055D8E8  4E 80 00 20 */	blr 
