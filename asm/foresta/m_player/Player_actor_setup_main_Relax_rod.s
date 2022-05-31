lbl_804F5878:
/* 804F5878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F587C  7C 08 02 A6 */	mflr r0
/* 804F5880  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F5888  7C 9F 23 78 */	mr r31, r4
/* 804F588C  93 C1 00 08 */	stw r30, 8(r1)
/* 804F5890  7C 7E 1B 78 */	mr r30, r3
/* 804F5894  4B FE B0 AD */	bl Player_actor_Get_ItemKind_from_submenu
/* 804F5898  38 00 00 00 */	li r0, 0
/* 804F589C  3C C0 80 65 */	lis r6, lit_7381@ha /* 0x80648354@ha */
/* 804F58A0  90 1E 0D 18 */	stw r0, 0xd18(r30)
/* 804F58A4  3C A0 80 65 */	lis r5, lit_6389@ha /* 0x8064807C@ha */
/* 804F58A8  C0 26 83 54 */	lfs f1, lit_7381@l(r6)  /* 0x80648354@l */
/* 804F58AC  7C 64 07 74 */	extsb r4, r3
/* 804F58B0  C0 45 80 7C */	lfs f2, lit_6389@l(r5)  /* 0x8064807C@l */
/* 804F58B4  7F C3 F3 78 */	mr r3, r30
/* 804F58B8  90 1E 0D 1C */	stw r0, 0xd1c(r30)
/* 804F58BC  38 A0 00 11 */	li r5, 0x11
/* 804F58C0  38 C0 00 0F */	li r6, 0xf
/* 804F58C4  38 E0 00 01 */	li r7, 1
/* 804F58C8  4B FE 47 55 */	bl Player_actor_SetupItem_Base2
/* 804F58CC  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F58D0  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F58D4  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804F58D8  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804F58DC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F58E0  3C 60 80 65 */	lis r3, lit_9485@ha /* 0x806484C8@ha */
/* 804F58E4  C0 83 84 C8 */	lfs f4, lit_9485@l(r3)  /* 0x806484C8@l */
/* 804F58E8  7F C3 F3 78 */	mr r3, r30
/* 804F58EC  FC 40 08 90 */	fmr f2, f1
/* 804F58F0  7F E4 FB 78 */	mr r4, r31
/* 804F58F4  38 A0 00 46 */	li r5, 0x46
/* 804F58F8  38 C0 00 46 */	li r6, 0x46
/* 804F58FC  38 E0 00 01 */	li r7, 1
/* 804F5900  39 00 00 00 */	li r8, 0
/* 804F5904  4B FE 0F 0D */	bl Player_actor_InitAnimation_Base2
/* 804F5908  7F C3 F3 78 */	mr r3, r30
/* 804F590C  7F E4 FB 78 */	mr r4, r31
/* 804F5910  4B FD FF E9 */	bl Player_actor_setup_main_Base
/* 804F5914  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F5918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F591C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F5920  7C 08 03 A6 */	mtlr r0
/* 804F5924  38 21 00 10 */	addi r1, r1, 0x10
/* 804F5928  4E 80 00 20 */	blr 
