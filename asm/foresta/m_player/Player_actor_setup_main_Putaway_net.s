lbl_804F4830:
/* 804F4830  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F4834  7C 08 02 A6 */	mflr r0
/* 804F4838  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F483C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F4840  7C 9F 23 78 */	mr r31, r4
/* 804F4844  93 C1 00 08 */	stw r30, 8(r1)
/* 804F4848  7C 7E 1B 78 */	mr r30, r3
/* 804F484C  4B FE C0 F5 */	bl Player_actor_Get_ItemKind_from_submenu
/* 804F4850  80 1E 0D 60 */	lwz r0, 0xd60(r30)
/* 804F4854  3C C0 80 65 */	lis r6, lit_7381@ha /* 0x80648354@ha */
/* 804F4858  3C A0 80 64 */	lis r5, lit_950@ha /* 0x806468F4@ha */
/* 804F485C  C0 26 83 54 */	lfs f1, lit_7381@l(r6)  /* 0x80648354@l */
/* 804F4860  C0 45 68 F4 */	lfs f2, lit_950@l(r5)  /* 0x806468F4@l */
/* 804F4864  7C 64 07 74 */	extsb r4, r3
/* 804F4868  90 1E 0D 18 */	stw r0, 0xd18(r30)
/* 804F486C  7F C3 F3 78 */	mr r3, r30
/* 804F4870  38 A0 00 08 */	li r5, 8
/* 804F4874  38 C0 00 08 */	li r6, 8
/* 804F4878  38 E0 00 00 */	li r7, 0
/* 804F487C  4B FE 57 A1 */	bl Player_actor_SetupItem_Base2
/* 804F4880  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F4884  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F4888  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804F488C  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804F4890  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F4894  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F4898  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804F489C  7F C3 F3 78 */	mr r3, r30
/* 804F48A0  FC 40 08 90 */	fmr f2, f1
/* 804F48A4  7F E4 FB 78 */	mr r4, r31
/* 804F48A8  38 A0 00 26 */	li r5, 0x26
/* 804F48AC  38 C0 00 26 */	li r6, 0x26
/* 804F48B0  38 E0 00 00 */	li r7, 0
/* 804F48B4  39 00 00 00 */	li r8, 0
/* 804F48B8  4B FE 1F 59 */	bl Player_actor_InitAnimation_Base2
/* 804F48BC  7F C3 F3 78 */	mr r3, r30
/* 804F48C0  7F E4 FB 78 */	mr r4, r31
/* 804F48C4  4B FE 10 35 */	bl Player_actor_setup_main_Base
/* 804F48C8  7F C3 F3 78 */	mr r3, r30
/* 804F48CC  4B FE AB B9 */	bl Player_actor_sound_GASAGOSO
/* 804F48D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F48D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F48D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F48DC  7C 08 03 A6 */	mtlr r0
/* 804F48E0  38 21 00 10 */	addi r1, r1, 0x10
/* 804F48E4  4E 80 00 20 */	blr 
