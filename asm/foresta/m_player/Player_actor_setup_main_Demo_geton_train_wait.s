lbl_804FDDB0:
/* 804FDDB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FDDB4  7C 08 02 A6 */	mflr r0
/* 804FDDB8  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804FDDBC  3C C0 80 64 */	lis r6, lit_2671@ha /* 0x80646C4C@ha */
/* 804FDDC0  38 E5 65 64 */	addi r7, r5, lit_603@l /* 0x80646564@l */
/* 804FDDC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FDDC8  C0 27 00 00 */	lfs f1, 0(r7)
/* 804FDDCC  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804FDDD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FDDD4  7C 9F 23 78 */	mr r31, r4
/* 804FDDD8  FC 40 08 90 */	fmr f2, f1
/* 804FDDDC  C0 66 6C 4C */	lfs f3, lit_2671@l(r6)  /* 0x80646C4C@l */
/* 804FDDE0  93 C1 00 08 */	stw r30, 8(r1)
/* 804FDDE4  7C 7E 1B 78 */	mr r30, r3
/* 804FDDE8  C0 85 83 54 */	lfs f4, lit_7381@l(r5)  /* 0x80648354@l */
/* 804FDDEC  38 A0 00 4C */	li r5, 0x4c
/* 804FDDF0  38 C0 00 4C */	li r6, 0x4c
/* 804FDDF4  38 E0 00 00 */	li r7, 0
/* 804FDDF8  4B FD 89 01 */	bl Player_actor_InitAnimation_Base1
/* 804FDDFC  7F C3 F3 78 */	mr r3, r30
/* 804FDE00  7F E4 FB 78 */	mr r4, r31
/* 804FDE04  4B FD 7A F5 */	bl Player_actor_setup_main_Base
/* 804FDE08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FDE0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FDE10  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FDE14  7C 08 03 A6 */	mtlr r0
/* 804FDE18  38 21 00 10 */	addi r1, r1, 0x10
/* 804FDE1C  4E 80 00 20 */	blr 
