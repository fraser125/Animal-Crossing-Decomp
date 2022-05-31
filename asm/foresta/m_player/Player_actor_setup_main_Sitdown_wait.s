lbl_804EF3D8:
/* 804EF3D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF3DC  7C 08 02 A6 */	mflr r0
/* 804EF3E0  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804EF3E4  3C C0 80 64 */	lis r6, lit_2671@ha /* 0x80646C4C@ha */
/* 804EF3E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF3EC  38 E0 00 00 */	li r7, 0
/* 804EF3F0  C0 25 65 64 */	lfs f1, lit_603@l(r5)  /* 0x80646564@l */
/* 804EF3F4  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804EF3F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EF3FC  7C 9F 23 78 */	mr r31, r4
/* 804EF400  C0 66 6C 4C */	lfs f3, lit_2671@l(r6)  /* 0x80646C4C@l */
/* 804EF404  FC 40 08 90 */	fmr f2, f1
/* 804EF408  93 C1 00 08 */	stw r30, 8(r1)
/* 804EF40C  7C 7E 1B 78 */	mr r30, r3
/* 804EF410  C0 85 83 54 */	lfs f4, lit_7381@l(r5)  /* 0x80648354@l */
/* 804EF414  38 A0 00 24 */	li r5, 0x24
/* 804EF418  80 03 0D 60 */	lwz r0, 0xd60(r3)
/* 804EF41C  38 C0 00 24 */	li r6, 0x24
/* 804EF420  90 03 0D 18 */	stw r0, 0xd18(r3)
/* 804EF424  4B FE 72 D5 */	bl Player_actor_InitAnimation_Base1
/* 804EF428  7F C3 F3 78 */	mr r3, r30
/* 804EF42C  7F E4 FB 78 */	mr r4, r31
/* 804EF430  4B FE 64 C9 */	bl Player_actor_setup_main_Base
/* 804EF434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF438  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EF43C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EF440  7C 08 03 A6 */	mtlr r0
/* 804EF444  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF448  4E 80 00 20 */	blr 
