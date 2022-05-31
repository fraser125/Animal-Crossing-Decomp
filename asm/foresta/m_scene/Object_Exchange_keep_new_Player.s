lbl_803F056C:
/* 803F056C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F0570  7C 08 02 A6 */	mflr r0
/* 803F0574  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F0578  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F057C  7C 7F 1B 78 */	mr r31, r3
/* 803F0580  4B FE 89 4D */	bl mPlib_Object_Exchange_keep_new_PlayerMdl
/* 803F0584  7F E3 FB 78 */	mr r3, r31
/* 803F0588  38 80 00 00 */	li r4, 0
/* 803F058C  38 A0 00 00 */	li r5, 0
/* 803F0590  4B FE 8B 39 */	bl mPlib_Object_Exchange_keep_new_PlayerTex
/* 803F0594  7F E3 FB 78 */	mr r3, r31
/* 803F0598  38 80 00 00 */	li r4, 0
/* 803F059C  38 A0 00 00 */	li r5, 0
/* 803F05A0  4B FE 8C 61 */	bl mPlib_Object_Exchange_keep_new_PlayerPallet
/* 803F05A4  7F E3 FB 78 */	mr r3, r31
/* 803F05A8  38 80 00 01 */	li r4, 1
/* 803F05AC  38 A0 00 02 */	li r5, 2
/* 803F05B0  4B FE 8B 19 */	bl mPlib_Object_Exchange_keep_new_PlayerTex
/* 803F05B4  7F E3 FB 78 */	mr r3, r31
/* 803F05B8  38 80 00 01 */	li r4, 1
/* 803F05BC  38 A0 00 02 */	li r5, 2
/* 803F05C0  4B FE 8C 41 */	bl mPlib_Object_Exchange_keep_new_PlayerPallet
/* 803F05C4  7F E3 FB 78 */	mr r3, r31
/* 803F05C8  4B FE 8C D9 */	bl mPlib_Object_Exchange_keep_new_PlayerFaceTex
/* 803F05CC  7F E3 FB 78 */	mr r3, r31
/* 803F05D0  38 80 00 01 */	li r4, 1
/* 803F05D4  38 A0 00 00 */	li r5, 0
/* 803F05D8  4B FE 8D 01 */	bl mPlib_Object_Exchange_keep_new_PlayerFacePallet
/* 803F05DC  7F E3 FB 78 */	mr r3, r31
/* 803F05E0  38 80 00 02 */	li r4, 2
/* 803F05E4  38 A0 00 01 */	li r5, 1
/* 803F05E8  4B FE 8C F1 */	bl mPlib_Object_Exchange_keep_new_PlayerFacePallet
/* 803F05EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F05F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F05F4  7C 08 03 A6 */	mtlr r0
/* 803F05F8  38 21 00 10 */	addi r1, r1, 0x10
/* 803F05FC  4E 80 00 20 */	blr 
