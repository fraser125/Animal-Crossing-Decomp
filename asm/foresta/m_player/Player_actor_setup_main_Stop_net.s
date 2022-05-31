lbl_804F3DE8:
/* 804F3DE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F3DEC  7C 08 02 A6 */	mflr r0
/* 804F3DF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F3DF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F3DF8  7C 9F 23 78 */	mr r31, r4
/* 804F3DFC  93 C1 00 08 */	stw r30, 8(r1)
/* 804F3E00  7C 7E 1B 78 */	mr r30, r3
/* 804F3E04  4B FE CB 3D */	bl Player_actor_Get_ItemKind_from_submenu
/* 804F3E08  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804F3E0C  3C A0 80 64 */	lis r5, lit_950@ha /* 0x806468F4@ha */
/* 804F3E10  38 C4 83 54 */	addi r6, r4, lit_7381@l /* 0x80648354@l */
/* 804F3E14  C0 45 68 F4 */	lfs f2, lit_950@l(r5)  /* 0x806468F4@l */
/* 804F3E18  C0 26 00 00 */	lfs f1, 0(r6)
/* 804F3E1C  7C 64 07 74 */	extsb r4, r3
/* 804F3E20  7F C3 F3 78 */	mr r3, r30
/* 804F3E24  38 A0 00 0B */	li r5, 0xb
/* 804F3E28  38 C0 00 04 */	li r6, 4
/* 804F3E2C  38 E0 00 00 */	li r7, 0
/* 804F3E30  4B FE 61 ED */	bl Player_actor_SetupItem_Base2
/* 804F3E34  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F3E38  38 00 00 00 */	li r0, 0
/* 804F3E3C  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F3E40  7F C3 F3 78 */	mr r3, r30
/* 804F3E44  90 1E 0D 18 */	stw r0, 0xd18(r30)
/* 804F3E48  7F E4 FB 78 */	mr r4, r31
/* 804F3E4C  D0 1E 01 80 */	stfs f0, 0x180(r30)
/* 804F3E50  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 804F3E54  4B FE 1A A5 */	bl Player_actor_setup_main_Base
/* 804F3E58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F3E5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F3E60  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F3E64  7C 08 03 A6 */	mtlr r0
/* 804F3E68  38 21 00 10 */	addi r1, r1, 0x10
/* 804F3E6C  4E 80 00 20 */	blr 
