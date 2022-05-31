lbl_805029EC:
/* 805029EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805029F0  7C 08 02 A6 */	mflr r0
/* 805029F4  3C C0 80 64 */	lis r6, lit_604@ha /* 0x80646568@ha */
/* 805029F8  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 805029FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80502A00  C0 06 65 68 */	lfs f0, lit_604@l(r6)  /* 0x80646568@l */
/* 80502A04  38 C1 00 08 */	addi r6, r1, 8
/* 80502A08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80502A0C  7C 9F 23 78 */	mr r31, r4
/* 80502A10  38 85 83 54 */	addi r4, r5, lit_7381@l /* 0x80648354@l */
/* 80502A14  38 A1 00 0C */	addi r5, r1, 0xc
/* 80502A18  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80502A1C  7C 7E 1B 78 */	mr r30, r3
/* 80502A20  C0 24 00 00 */	lfs f1, 0(r4)
/* 80502A24  38 80 00 77 */	li r4, 0x77
/* 80502A28  D0 03 0D 18 */	stfs f0, 0xd18(r3)
/* 80502A2C  4B FD 75 35 */	bl Player_actor_SetupItem_Base1
/* 80502A30  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80502A34  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 80502A38  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 80502A3C  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 80502A40  C0 25 00 00 */	lfs f1, 0(r5)
/* 80502A44  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80502A48  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 80502A4C  7F C3 F3 78 */	mr r3, r30
/* 80502A50  FC 40 08 90 */	fmr f2, f1
/* 80502A54  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80502A58  81 01 00 08 */	lwz r8, 8(r1)
/* 80502A5C  7F E4 FB 78 */	mr r4, r31
/* 80502A60  38 A0 00 77 */	li r5, 0x77
/* 80502A64  38 E0 00 00 */	li r7, 0
/* 80502A68  4B FD 3D A9 */	bl Player_actor_InitAnimation_Base2
/* 80502A6C  7F C3 F3 78 */	mr r3, r30
/* 80502A70  7F E4 FB 78 */	mr r4, r31
/* 80502A74  4B FD 2E 85 */	bl Player_actor_setup_main_Base
/* 80502A78  38 60 01 68 */	li r3, 0x168
/* 80502A7C  4B E7 91 09 */	bl mBGMPsComp_make_ps_quiet
/* 80502A80  88 1E 12 1E */	lbz r0, 0x121e(r30)
/* 80502A84  7C 00 07 75 */	extsb. r0, r0
/* 80502A88  41 82 00 18 */	beq lbl_80502AA0
/* 80502A8C  38 00 00 00 */	li r0, 0
/* 80502A90  38 60 00 43 */	li r3, 0x43
/* 80502A94  98 1E 12 1E */	stb r0, 0x121e(r30)
/* 80502A98  38 80 00 00 */	li r4, 0
/* 80502A9C  4B E7 98 E5 */	bl mBGMPsComp_delete_ps_happening
lbl_80502AA0:
/* 80502AA0  7F C3 F3 78 */	mr r3, r30
/* 80502AA4  4B FD CE D9 */	bl Player_actor_sound_hachi_sasareru
/* 80502AA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80502AAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80502AB0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80502AB4  7C 08 03 A6 */	mtlr r0
/* 80502AB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80502ABC  4E 80 00 20 */	blr 
