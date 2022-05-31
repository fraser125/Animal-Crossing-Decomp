lbl_804F6F78:
/* 804F6F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F6F7C  7C 08 02 A6 */	mflr r0
/* 804F6F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F6F84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F6F88  7C 9F 23 78 */	mr r31, r4
/* 804F6F8C  93 C1 00 08 */	stw r30, 8(r1)
/* 804F6F90  7C 7E 1B 78 */	mr r30, r3
/* 804F6F94  4B FE 99 AD */	bl Player_actor_Get_ItemKind_from_submenu
/* 804F6F98  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804F6F9C  7C 64 07 74 */	extsb r4, r3
/* 804F6FA0  C0 05 65 68 */	lfs f0, lit_604@l(r5)  /* 0x80646568@l */
/* 804F6FA4  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F6FA8  38 E3 83 54 */	addi r7, r3, lit_7381@l /* 0x80648354@l */
/* 804F6FAC  3C A0 80 64 */	lis r5, lit_950@ha /* 0x806468F4@ha */
/* 804F6FB0  D0 1E 0D 18 */	stfs f0, 0xd18(r30)
/* 804F6FB4  38 C5 68 F4 */	addi r6, r5, lit_950@l /* 0x806468F4@l */
/* 804F6FB8  C0 27 00 00 */	lfs f1, 0(r7)
/* 804F6FBC  7F C3 F3 78 */	mr r3, r30
/* 804F6FC0  A8 1E 0D 60 */	lha r0, 0xd60(r30)
/* 804F6FC4  38 A0 00 0F */	li r5, 0xf
/* 804F6FC8  C0 46 00 00 */	lfs f2, 0(r6)
/* 804F6FCC  38 C0 00 13 */	li r6, 0x13
/* 804F6FD0  B0 1E 0D 1C */	sth r0, 0xd1c(r30)
/* 804F6FD4  38 E0 00 00 */	li r7, 0
/* 804F6FD8  80 1E 0D 64 */	lwz r0, 0xd64(r30)
/* 804F6FDC  90 1E 0D 20 */	stw r0, 0xd20(r30)
/* 804F6FE0  4B FE 30 3D */	bl Player_actor_SetupItem_Base2
/* 804F6FE4  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F6FE8  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F6FEC  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804F6FF0  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804F6FF4  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F6FF8  3C 60 80 65 */	lis r3, lit_9485@ha /* 0x806484C8@ha */
/* 804F6FFC  C0 83 84 C8 */	lfs f4, lit_9485@l(r3)  /* 0x806484C8@l */
/* 804F7000  7F C3 F3 78 */	mr r3, r30
/* 804F7004  FC 40 08 90 */	fmr f2, f1
/* 804F7008  7F E4 FB 78 */	mr r4, r31
/* 804F700C  38 A0 00 42 */	li r5, 0x42
/* 804F7010  38 C0 00 42 */	li r6, 0x42
/* 804F7014  38 E0 00 00 */	li r7, 0
/* 804F7018  39 00 00 00 */	li r8, 0
/* 804F701C  4B FD F7 F5 */	bl Player_actor_InitAnimation_Base2
/* 804F7020  7F C3 F3 78 */	mr r3, r30
/* 804F7024  7F E4 FB 78 */	mr r4, r31
/* 804F7028  4B FD E8 D1 */	bl Player_actor_setup_main_Base
/* 804F702C  7F C3 F3 78 */	mr r3, r30
/* 804F7030  4B FE 84 55 */	bl Player_actor_sound_GASAGOSO
/* 804F7034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F7038  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F703C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F7040  7C 08 03 A6 */	mtlr r0
/* 804F7044  38 21 00 10 */	addi r1, r1, 0x10
/* 804F7048  4E 80 00 20 */	blr 
