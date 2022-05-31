lbl_803D95D4:
/* 803D95D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D95D8  7C 08 02 A6 */	mflr r0
/* 803D95DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D95E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D95E4  93 C1 00 08 */	stw r30, 8(r1)
/* 803D95E8  7C 7E 1B 78 */	mr r30, r3
/* 803D95EC  4B FF FE 0D */	bl mPlib_get_player_face_p
/* 803D95F0  7C 7F 1B 78 */	mr r31, r3
/* 803D95F4  4B FF F7 D1 */	bl mPlib_Get_UseFaceTexRom_p
/* 803D95F8  28 1F 00 00 */	cmplwi r31, 0
/* 803D95FC  41 82 00 24 */	beq lbl_803D9620
/* 803D9600  28 03 00 00 */	cmplwi r3, 0
/* 803D9604  41 82 00 1C */	beq lbl_803D9620
/* 803D9608  7F E4 FB 78 */	mr r4, r31
/* 803D960C  38 A0 0E 00 */	li r5, 0xe00
/* 803D9610  4B C2 D6 65 */	bl _JW_GetResourceAram
/* 803D9614  7F E3 FB 78 */	mr r3, r31
/* 803D9618  38 80 0E 00 */	li r4, 0xe00
/* 803D961C  4B CA 06 01 */	bl DCStoreRangeNoSync
lbl_803D9620:
/* 803D9620  7F C3 F3 78 */	mr r3, r30
/* 803D9624  4B FF FF 4D */	bl mPlib_change_player_face_pallet
/* 803D9628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D962C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D9630  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D9634  7C 08 03 A6 */	mtlr r0
/* 803D9638  38 21 00 10 */	addi r1, r1, 0x10
/* 803D963C  4E 80 00 20 */	blr 
