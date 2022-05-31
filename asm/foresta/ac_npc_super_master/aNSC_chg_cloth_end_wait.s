lbl_80584924:
/* 80584924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80584928  7C 08 02 A6 */	mflr r0
/* 8058492C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80584930  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80584934  7C 9F 23 78 */	mr r31, r4
/* 80584938  93 C1 00 08 */	stw r30, 8(r1)
/* 8058493C  7C 7E 1B 78 */	mr r30, r3
/* 80584940  7F E3 FB 78 */	mr r3, r31
/* 80584944  4B E5 4D 2D */	bl mPlib_get_player_actor_main_index
/* 80584948  2C 03 00 65 */	cmpwi r3, 0x65
/* 8058494C  41 82 00 1C */	beq lbl_80584968
/* 80584950  4B E3 AD 59 */	bl func_803BF6A8
/* 80584954  4B E3 C3 F9 */	bl mMsg_Unset_LockContinue
/* 80584958  80 BE 09 98 */	lwz r5, 0x998(r30)
/* 8058495C  7F C3 F3 78 */	mr r3, r30
/* 80584960  7F E4 FB 78 */	mr r4, r31
/* 80584964  48 00 16 5D */	bl aNSC_setupAction
lbl_80584968:
/* 80584968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058496C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80584970  83 C1 00 08 */	lwz r30, 8(r1)
/* 80584974  7C 08 03 A6 */	mtlr r0
/* 80584978  38 21 00 10 */	addi r1, r1, 0x10
/* 8058497C  4E 80 00 20 */	blr 
