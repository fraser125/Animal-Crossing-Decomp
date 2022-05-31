lbl_804F4C4C:
/* 804F4C4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F4C50  7C 08 02 A6 */	mflr r0
/* 804F4C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F4C58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F4C5C  7C 9F 23 78 */	mr r31, r4
/* 804F4C60  93 C1 00 08 */	stw r30, 8(r1)
/* 804F4C64  7C 7E 1B 78 */	mr r30, r3
/* 804F4C68  4B FE BC D9 */	bl Player_actor_Get_ItemKind_from_submenu
/* 804F4C6C  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804F4C70  3C A0 80 64 */	lis r5, lit_950@ha /* 0x806468F4@ha */
/* 804F4C74  38 C4 83 54 */	addi r6, r4, lit_7381@l /* 0x80648354@l */
/* 804F4C78  C0 45 68 F4 */	lfs f2, lit_950@l(r5)  /* 0x806468F4@l */
/* 804F4C7C  C0 26 00 00 */	lfs f1, 0(r6)
/* 804F4C80  7C 64 07 74 */	extsb r4, r3
/* 804F4C84  7F C3 F3 78 */	mr r3, r30
/* 804F4C88  38 A0 00 12 */	li r5, 0x12
/* 804F4C8C  38 C0 00 0C */	li r6, 0xc
/* 804F4C90  38 E0 00 00 */	li r7, 0
/* 804F4C94  4B FE 53 89 */	bl Player_actor_SetupItem_Base2
/* 804F4C98  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F4C9C  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F4CA0  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804F4CA4  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804F4CA8  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F4CAC  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F4CB0  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804F4CB4  7F C3 F3 78 */	mr r3, r30
/* 804F4CB8  FC 40 08 90 */	fmr f2, f1
/* 804F4CBC  7F E4 FB 78 */	mr r4, r31
/* 804F4CC0  38 A0 00 44 */	li r5, 0x44
/* 804F4CC4  38 C0 00 44 */	li r6, 0x44
/* 804F4CC8  38 E0 00 00 */	li r7, 0
/* 804F4CCC  39 00 00 00 */	li r8, 0
/* 804F4CD0  4B FE 1B 41 */	bl Player_actor_InitAnimation_Base2
/* 804F4CD4  7F C3 F3 78 */	mr r3, r30
/* 804F4CD8  7F E4 FB 78 */	mr r4, r31
/* 804F4CDC  4B FE 0C 1D */	bl Player_actor_setup_main_Base
/* 804F4CE0  38 00 00 00 */	li r0, 0
/* 804F4CE4  B0 1E 0F 50 */	sth r0, 0xf50(r30)
/* 804F4CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F4CEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F4CF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F4CF4  7C 08 03 A6 */	mtlr r0
/* 804F4CF8  38 21 00 10 */	addi r1, r1, 0x10
/* 804F4CFC  4E 80 00 20 */	blr 
