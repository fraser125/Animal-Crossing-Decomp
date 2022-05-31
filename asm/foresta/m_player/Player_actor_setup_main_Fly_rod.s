lbl_804F620C:
/* 804F620C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F6210  7C 08 02 A6 */	mflr r0
/* 804F6214  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F6218  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F621C  7C 9F 23 78 */	mr r31, r4
/* 804F6220  93 C1 00 08 */	stw r30, 8(r1)
/* 804F6224  7C 7E 1B 78 */	mr r30, r3
/* 804F6228  4B FE A7 19 */	bl Player_actor_Get_ItemKind_from_submenu
/* 804F622C  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804F6230  3C A0 80 64 */	lis r5, lit_950@ha /* 0x806468F4@ha */
/* 804F6234  38 C4 83 54 */	addi r6, r4, lit_7381@l /* 0x80648354@l */
/* 804F6238  C0 45 68 F4 */	lfs f2, lit_950@l(r5)  /* 0x806468F4@l */
/* 804F623C  C0 26 00 00 */	lfs f1, 0(r6)
/* 804F6240  7C 64 07 74 */	extsb r4, r3
/* 804F6244  7F C3 F3 78 */	mr r3, r30
/* 804F6248  38 A0 00 0F */	li r5, 0xf
/* 804F624C  38 C0 00 12 */	li r6, 0x12
/* 804F6250  38 E0 00 00 */	li r7, 0
/* 804F6254  4B FE 3D C9 */	bl Player_actor_SetupItem_Base2
/* 804F6258  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F625C  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F6260  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804F6264  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804F6268  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F626C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F6270  C0 83 65 68 */	lfs f4, lit_604@l(r3)  /* 0x80646568@l */
/* 804F6274  7F C3 F3 78 */	mr r3, r30
/* 804F6278  FC 40 08 90 */	fmr f2, f1
/* 804F627C  7F E4 FB 78 */	mr r4, r31
/* 804F6280  38 A0 00 40 */	li r5, 0x40
/* 804F6284  38 C0 00 40 */	li r6, 0x40
/* 804F6288  38 E0 00 00 */	li r7, 0
/* 804F628C  39 00 00 00 */	li r8, 0
/* 804F6290  4B FE 05 81 */	bl Player_actor_InitAnimation_Base2
/* 804F6294  7F C3 F3 78 */	mr r3, r30
/* 804F6298  4B FE 94 9D */	bl Player_actor_sound_ROD_BACK
/* 804F629C  7F C3 F3 78 */	mr r3, r30
/* 804F62A0  7F E4 FB 78 */	mr r4, r31
/* 804F62A4  4B FD F6 55 */	bl Player_actor_setup_main_Base
/* 804F62A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F62AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F62B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F62B4  7C 08 03 A6 */	mtlr r0
/* 804F62B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804F62BC  4E 80 00 20 */	blr 
