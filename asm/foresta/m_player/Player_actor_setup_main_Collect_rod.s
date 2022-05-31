lbl_804F5C00:
/* 804F5C00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F5C04  7C 08 02 A6 */	mflr r0
/* 804F5C08  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F5C0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804F5C10  7C 9F 23 78 */	mr r31, r4
/* 804F5C14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804F5C18  7C 7E 1B 78 */	mr r30, r3
/* 804F5C1C  4B FE AD 25 */	bl Player_actor_Get_ItemKind_from_submenu
/* 804F5C20  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804F5C24  3C A0 80 64 */	lis r5, lit_950@ha /* 0x806468F4@ha */
/* 804F5C28  38 C4 83 54 */	addi r6, r4, lit_7381@l /* 0x80648354@l */
/* 804F5C2C  C0 45 68 F4 */	lfs f2, lit_950@l(r5)  /* 0x806468F4@l */
/* 804F5C30  C0 26 00 00 */	lfs f1, 0(r6)
/* 804F5C34  7C 64 07 74 */	extsb r4, r3
/* 804F5C38  7F C3 F3 78 */	mr r3, r30
/* 804F5C3C  38 A0 00 0F */	li r5, 0xf
/* 804F5C40  38 C0 00 10 */	li r6, 0x10
/* 804F5C44  38 E0 00 00 */	li r7, 0
/* 804F5C48  4B FE 43 D5 */	bl Player_actor_SetupItem_Base2
/* 804F5C4C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F5C50  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F5C54  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804F5C58  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804F5C5C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F5C60  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F5C64  C0 83 65 68 */	lfs f4, lit_604@l(r3)  /* 0x80646568@l */
/* 804F5C68  7F C3 F3 78 */	mr r3, r30
/* 804F5C6C  FC 40 08 90 */	fmr f2, f1
/* 804F5C70  7F E4 FB 78 */	mr r4, r31
/* 804F5C74  38 A0 00 47 */	li r5, 0x47
/* 804F5C78  38 C0 00 47 */	li r6, 0x47
/* 804F5C7C  38 E0 00 00 */	li r7, 0
/* 804F5C80  39 00 00 00 */	li r8, 0
/* 804F5C84  4B FE 0B 8D */	bl Player_actor_InitAnimation_Base2
/* 804F5C88  7F C3 F3 78 */	mr r3, r30
/* 804F5C8C  7F E4 FB 78 */	mr r4, r31
/* 804F5C90  4B FD FC 69 */	bl Player_actor_setup_main_Base
/* 804F5C94  7F C3 F3 78 */	mr r3, r30
/* 804F5C98  4B FE 9A 9D */	bl Player_actor_sound_ROD_BACK
/* 804F5C9C  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 804F5CA0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804F5CA4  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 804F5CA8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804F5CAC  3C 63 00 02 */	addis r3, r3, 2
/* 804F5CB0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804F5CB4  90 81 00 08 */	stw r4, 8(r1)
/* 804F5CB8  7F E7 FB 78 */	mr r7, r31
/* 804F5CBC  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804F5CC0  38 81 00 08 */	addi r4, r1, 8
/* 804F5CC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F5CC8  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804F5CCC  38 60 00 4E */	li r3, 0x4e
/* 804F5CD0  38 A0 00 02 */	li r5, 2
/* 804F5CD4  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 804F5CD8  39 40 00 00 */	li r10, 0
/* 804F5CDC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F5CE0  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 804F5CE4  81 86 00 00 */	lwz r12, 0(r6)
/* 804F5CE8  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804F5CEC  A8 DE 00 DE */	lha r6, 0xde(r30)
/* 804F5CF0  7C 09 07 34 */	extsh r9, r0
/* 804F5CF4  7D 89 03 A6 */	mtctr r12
/* 804F5CF8  4E 80 04 21 */	bctrl 
/* 804F5CFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F5D00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804F5D04  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804F5D08  7C 08 03 A6 */	mtlr r0
/* 804F5D0C  38 21 00 20 */	addi r1, r1, 0x20
/* 804F5D10  4E 80 00 20 */	blr 
