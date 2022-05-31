lbl_8057AE18:
/* 8057AE18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057AE1C  7C 08 02 A6 */	mflr r0
/* 8057AE20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057AE24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057AE28  7C 9F 23 78 */	mr r31, r4
/* 8057AE2C  93 C1 00 08 */	stw r30, 8(r1)
/* 8057AE30  7C 7E 1B 78 */	mr r30, r3
/* 8057AE34  7F E3 FB 78 */	mr r3, r31
/* 8057AE38  4B E5 E8 39 */	bl mPlib_get_player_actor_main_index
/* 8057AE3C  2C 03 00 65 */	cmpwi r3, 0x65
/* 8057AE40  41 82 00 1C */	beq lbl_8057AE5C
/* 8057AE44  4B E4 48 65 */	bl func_803BF6A8
/* 8057AE48  4B E4 5F 05 */	bl mMsg_Unset_LockContinue
/* 8057AE4C  80 BE 09 98 */	lwz r5, 0x998(r30)
/* 8057AE50  7F C3 F3 78 */	mr r3, r30
/* 8057AE54  7F E4 FB 78 */	mr r4, r31
/* 8057AE58  48 00 16 5D */	bl aNSC_setupAction
lbl_8057AE5C:
/* 8057AE5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057AE60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057AE64  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057AE68  7C 08 03 A6 */	mtlr r0
/* 8057AE6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8057AE70  4E 80 00 20 */	blr 
