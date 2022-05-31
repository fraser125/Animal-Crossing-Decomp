lbl_804E5404:
/* 804E5404  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E5408  7C 08 02 A6 */	mflr r0
/* 804E540C  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804E5410  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E5414  38 C1 00 08 */	addi r6, r1, 8
/* 804E5418  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 804E541C  38 A1 00 0C */	addi r5, r1, 0xc
/* 804E5420  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E5424  7C 9F 23 78 */	mr r31, r4
/* 804E5428  38 80 00 00 */	li r4, 0
/* 804E542C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804E5430  7C 7E 1B 78 */	mr r30, r3
/* 804E5434  4B FF 4B 2D */	bl Player_actor_SetupItem_Base1
/* 804E5438  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804E543C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E5440  38 A4 65 68 */	addi r5, r4, lit_604@l /* 0x80646568@l */
/* 804E5444  C0 23 65 64 */	lfs f1, lit_603@l(r3)  /* 0x80646564@l */
/* 804E5448  C0 05 00 00 */	lfs f0, 0(r5)
/* 804E544C  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804E5450  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804E5454  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804E5458  D0 1E 0D 18 */	stfs f0, 0xd18(r30)
/* 804E545C  FC 40 08 90 */	fmr f2, f1
/* 804E5460  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804E5464  7F C3 F3 78 */	mr r3, r30
/* 804E5468  C0 1E 0D 64 */	lfs f0, 0xd64(r30)
/* 804E546C  7F E4 FB 78 */	mr r4, r31
/* 804E5470  C0 85 00 00 */	lfs f4, 0(r5)
/* 804E5474  D0 1E 0D 1C */	stfs f0, 0xd1c(r30)
/* 804E5478  38 A0 00 00 */	li r5, 0
/* 804E547C  80 1E 0D 60 */	lwz r0, 0xd60(r30)
/* 804E5480  90 1E 0D 20 */	stw r0, 0xd20(r30)
/* 804E5484  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804E5488  80 E1 00 08 */	lwz r7, 8(r1)
/* 804E548C  4B FF 12 6D */	bl Player_actor_InitAnimation_Base1
/* 804E5490  7F C3 F3 78 */	mr r3, r30
/* 804E5494  7F E4 FB 78 */	mr r4, r31
/* 804E5498  4B FF 04 61 */	bl Player_actor_setup_main_Base
/* 804E549C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E54A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E54A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804E54A8  7C 08 03 A6 */	mtlr r0
/* 804E54AC  38 21 00 20 */	addi r1, r1, 0x20
/* 804E54B0  4E 80 00 20 */	blr 
