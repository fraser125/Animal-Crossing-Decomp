lbl_804E516C:
/* 804E516C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E5170  7C 08 02 A6 */	mflr r0
/* 804E5174  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804E5178  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E517C  38 C1 00 08 */	addi r6, r1, 8
/* 804E5180  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 804E5184  38 A1 00 0C */	addi r5, r1, 0xc
/* 804E5188  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E518C  7C 9F 23 78 */	mr r31, r4
/* 804E5190  38 80 00 00 */	li r4, 0
/* 804E5194  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804E5198  7C 7E 1B 78 */	mr r30, r3
/* 804E519C  4B FF 4D C5 */	bl Player_actor_SetupItem_Base1
/* 804E51A0  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E51A4  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804E51A8  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804E51AC  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804E51B0  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E51B4  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804E51B8  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804E51BC  7F C3 F3 78 */	mr r3, r30
/* 804E51C0  FC 40 08 90 */	fmr f2, f1
/* 804E51C4  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804E51C8  80 E1 00 08 */	lwz r7, 8(r1)
/* 804E51CC  7F E4 FB 78 */	mr r4, r31
/* 804E51D0  38 A0 00 00 */	li r5, 0
/* 804E51D4  4B FF 15 25 */	bl Player_actor_InitAnimation_Base1
/* 804E51D8  7F C3 F3 78 */	mr r3, r30
/* 804E51DC  7F E4 FB 78 */	mr r4, r31
/* 804E51E0  4B FF 07 19 */	bl Player_actor_setup_main_Base
/* 804E51E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E51E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E51EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804E51F0  7C 08 03 A6 */	mtlr r0
/* 804E51F4  38 21 00 20 */	addi r1, r1, 0x20
/* 804E51F8  4E 80 00 20 */	blr 
