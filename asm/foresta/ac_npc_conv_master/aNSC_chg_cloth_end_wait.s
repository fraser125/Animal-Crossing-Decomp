lbl_80549880:
/* 80549880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80549884  7C 08 02 A6 */	mflr r0
/* 80549888  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054988C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80549890  7C 9F 23 78 */	mr r31, r4
/* 80549894  93 C1 00 08 */	stw r30, 8(r1)
/* 80549898  7C 7E 1B 78 */	mr r30, r3
/* 8054989C  7F E3 FB 78 */	mr r3, r31
/* 805498A0  4B E8 FD D1 */	bl mPlib_get_player_actor_main_index
/* 805498A4  2C 03 00 65 */	cmpwi r3, 0x65
/* 805498A8  41 82 00 1C */	beq lbl_805498C4
/* 805498AC  4B E7 5D FD */	bl func_803BF6A8
/* 805498B0  4B E7 74 9D */	bl mMsg_Unset_LockContinue
/* 805498B4  80 BE 09 98 */	lwz r5, 0x998(r30)
/* 805498B8  7F C3 F3 78 */	mr r3, r30
/* 805498BC  7F E4 FB 78 */	mr r4, r31
/* 805498C0  48 00 16 5D */	bl aNSC_setupAction
lbl_805498C4:
/* 805498C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805498C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805498CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805498D0  7C 08 03 A6 */	mtlr r0
/* 805498D4  38 21 00 10 */	addi r1, r1, 0x10
/* 805498D8  4E 80 00 20 */	blr 
