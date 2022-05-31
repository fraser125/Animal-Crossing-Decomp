lbl_804F3734:
/* 804F3734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F3738  7C 08 02 A6 */	mflr r0
/* 804F373C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F3740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F3744  7C 9F 23 78 */	mr r31, r4
/* 804F3748  93 C1 00 08 */	stw r30, 8(r1)
/* 804F374C  7C 7E 1B 78 */	mr r30, r3
/* 804F3750  4B FE D1 F1 */	bl Player_actor_Get_ItemKind_from_submenu
/* 804F3754  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804F3758  7C 64 07 74 */	extsb r4, r3
/* 804F375C  C0 05 65 68 */	lfs f0, lit_604@l(r5)  /* 0x80646568@l */
/* 804F3760  3C 60 80 65 */	lis r3, lit_9115@ha /* 0x806484B8@ha */
/* 804F3764  38 C3 84 B8 */	addi r6, r3, lit_9115@l /* 0x806484B8@l */
/* 804F3768  3C A0 80 64 */	lis r5, lit_950@ha /* 0x806468F4@ha */
/* 804F376C  C0 26 00 00 */	lfs f1, 0(r6)
/* 804F3770  7F C3 F3 78 */	mr r3, r30
/* 804F3774  C0 45 68 F4 */	lfs f2, lit_950@l(r5)  /* 0x806468F4@l */
/* 804F3778  38 A0 00 06 */	li r5, 6
/* 804F377C  D0 1E 0D 18 */	stfs f0, 0xd18(r30)
/* 804F3780  38 C0 00 07 */	li r6, 7
/* 804F3784  38 E0 00 00 */	li r7, 0
/* 804F3788  4B FE 68 95 */	bl Player_actor_SetupItem_Base2
/* 804F378C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F3790  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F3794  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804F3798  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804F379C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F37A0  3C 60 80 64 */	lis r3, lit_1375@ha /* 0x80646A30@ha */
/* 804F37A4  C0 83 6A 30 */	lfs f4, lit_1375@l(r3)  /* 0x80646A30@l */
/* 804F37A8  7F C3 F3 78 */	mr r3, r30
/* 804F37AC  FC 40 08 90 */	fmr f2, f1
/* 804F37B0  7F E4 FB 78 */	mr r4, r31
/* 804F37B4  38 A0 00 16 */	li r5, 0x16
/* 804F37B8  38 C0 00 16 */	li r6, 0x16
/* 804F37BC  38 E0 00 00 */	li r7, 0
/* 804F37C0  39 00 00 00 */	li r8, 0
/* 804F37C4  4B FE 30 4D */	bl Player_actor_InitAnimation_Base2
/* 804F37C8  80 1E 0E 70 */	lwz r0, 0xe70(r30)
/* 804F37CC  28 00 00 00 */	cmplwi r0, 0
/* 804F37D0  41 82 00 28 */	beq lbl_804F37F8
/* 804F37D4  80 7E 0F 2C */	lwz r3, 0xf2c(r30)
/* 804F37D8  2C 03 00 28 */	cmpwi r3, 0x28
/* 804F37DC  40 82 00 10 */	bne lbl_804F37EC
/* 804F37E0  38 00 00 00 */	li r0, 0
/* 804F37E4  90 1E 0D 1C */	stw r0, 0xd1c(r30)
/* 804F37E8  48 00 00 18 */	b lbl_804F3800
lbl_804F37EC:
/* 804F37EC  4B EF BA BD */	bl mSM_CHECK_LAST_INSECT_GET
/* 804F37F0  90 7E 0D 1C */	stw r3, 0xd1c(r30)
/* 804F37F4  48 00 00 0C */	b lbl_804F3800
lbl_804F37F8:
/* 804F37F8  38 00 00 00 */	li r0, 0
/* 804F37FC  90 1E 0D 1C */	stw r0, 0xd1c(r30)
lbl_804F3800:
/* 804F3800  7F C3 F3 78 */	mr r3, r30
/* 804F3804  7F E4 FB 78 */	mr r4, r31
/* 804F3808  4B FE 20 F1 */	bl Player_actor_setup_main_Base
/* 804F380C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F3810  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F3814  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F3818  7C 08 03 A6 */	mtlr r0
/* 804F381C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F3820  4E 80 00 20 */	blr 
