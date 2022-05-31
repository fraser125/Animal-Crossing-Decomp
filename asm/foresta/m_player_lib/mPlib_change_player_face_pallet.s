lbl_803D9570:
/* 803D9570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D9574  7C 08 02 A6 */	mflr r0
/* 803D9578  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D957C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D9580  7C 7F 1B 78 */	mr r31, r3
/* 803D9584  4B FF FA 7D */	bl Change_Player_face_bank_ID_Index
/* 803D9588  7F E3 FB 78 */	mr r3, r31
/* 803D958C  4B FF FE A5 */	bl mPlib_get_player_face_pallet_p
/* 803D9590  7C 7F 1B 78 */	mr r31, r3
/* 803D9594  4B FF F8 85 */	bl mPlib_Get_UseFacePalletRom_p
/* 803D9598  28 1F 00 00 */	cmplwi r31, 0
/* 803D959C  41 82 00 24 */	beq lbl_803D95C0
/* 803D95A0  28 03 00 00 */	cmplwi r3, 0
/* 803D95A4  41 82 00 1C */	beq lbl_803D95C0
/* 803D95A8  7F E4 FB 78 */	mr r4, r31
/* 803D95AC  38 A0 00 20 */	li r5, 0x20
/* 803D95B0  4B C2 D6 C5 */	bl _JW_GetResourceAram
/* 803D95B4  7F E3 FB 78 */	mr r3, r31
/* 803D95B8  38 80 00 20 */	li r4, 0x20
/* 803D95BC  4B CA 06 61 */	bl DCStoreRangeNoSync
lbl_803D95C0:
/* 803D95C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D95C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D95C8  7C 08 03 A6 */	mtlr r0
/* 803D95CC  38 21 00 10 */	addi r1, r1, 0x10
/* 803D95D0  4E 80 00 20 */	blr 
