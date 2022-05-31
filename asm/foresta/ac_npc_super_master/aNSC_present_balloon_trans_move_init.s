lbl_80585694:
/* 80585694  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80585698  7C 08 02 A6 */	mflr r0
/* 8058569C  38 80 00 01 */	li r4, 1
/* 805856A0  38 A0 00 00 */	li r5, 0
/* 805856A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805856A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805856AC  7C 7F 1B 78 */	mr r31, r3
/* 805856B0  38 60 00 04 */	li r3, 4
/* 805856B4  4B E1 2D 85 */	bl mDemo_Set_OrderValue
/* 805856B8  7F E3 FB 78 */	mr r3, r31
/* 805856BC  4B FF B7 FD */	bl aNSC_set_walk_spd
/* 805856C0  4B AD 76 35 */	bl fqrand
/* 805856C4  3C 80 80 65 */	lis r4, lit_594@ha /* 0x80649A88@ha */
/* 805856C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805856CC  C0 04 9A 88 */	lfs f0, lit_594@l(r4)  /* 0x80649A88@l */
/* 805856D0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805856D4  3C 63 00 02 */	addis r3, r3, 2
/* 805856D8  38 A0 00 01 */	li r5, 1
/* 805856DC  EC 00 00 72 */	fmuls f0, f0, f1
/* 805856E0  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805856E4  FC 00 00 1E */	fctiwz f0, f0
/* 805856E8  D8 01 00 08 */	stfd f0, 8(r1)
/* 805856EC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805856F0  38 04 22 44 */	addi r0, r4, 0x2244
/* 805856F4  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 805856F8  4B E5 B8 11 */	bl mPr_SetFreePossessionItem
/* 805856FC  4B E3 9F AD */	bl func_803BF6A8
/* 80585700  4B E3 B6 41 */	bl mMsg_Set_LockContinue
/* 80585704  38 00 00 01 */	li r0, 1
/* 80585708  98 1F 08 BE */	stb r0, 0x8be(r31)
/* 8058570C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80585710  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80585714  7C 08 03 A6 */	mtlr r0
/* 80585718  38 21 00 20 */	addi r1, r1, 0x20
/* 8058571C  4E 80 00 20 */	blr 
