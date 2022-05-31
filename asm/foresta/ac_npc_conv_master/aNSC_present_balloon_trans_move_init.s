lbl_8054A5F0:
/* 8054A5F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054A5F4  7C 08 02 A6 */	mflr r0
/* 8054A5F8  38 80 00 01 */	li r4, 1
/* 8054A5FC  38 A0 00 00 */	li r5, 0
/* 8054A600  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054A604  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8054A608  7C 7F 1B 78 */	mr r31, r3
/* 8054A60C  38 60 00 04 */	li r3, 4
/* 8054A610  4B E4 DE 29 */	bl mDemo_Set_OrderValue
/* 8054A614  7F E3 FB 78 */	mr r3, r31
/* 8054A618  4B FF B7 FD */	bl aNSC_set_walk_spd
/* 8054A61C  4B B1 26 D9 */	bl fqrand
/* 8054A620  3C 80 80 65 */	lis r4, lit_567@ha /* 0x8064947C@ha */
/* 8054A624  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054A628  C0 04 94 7C */	lfs f0, lit_567@l(r4)  /* 0x8064947C@l */
/* 8054A62C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054A630  3C 63 00 02 */	addis r3, r3, 2
/* 8054A634  38 A0 00 01 */	li r5, 1
/* 8054A638  EC 00 00 72 */	fmuls f0, f0, f1
/* 8054A63C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8054A640  FC 00 00 1E */	fctiwz f0, f0
/* 8054A644  D8 01 00 08 */	stfd f0, 8(r1)
/* 8054A648  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8054A64C  38 04 22 44 */	addi r0, r4, 0x2244
/* 8054A650  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8054A654  4B E9 68 B5 */	bl mPr_SetFreePossessionItem
/* 8054A658  4B E7 50 51 */	bl func_803BF6A8
/* 8054A65C  4B E7 66 E5 */	bl mMsg_Set_LockContinue
/* 8054A660  38 00 00 01 */	li r0, 1
/* 8054A664  98 1F 08 BE */	stb r0, 0x8be(r31)
/* 8054A668  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054A66C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8054A670  7C 08 03 A6 */	mtlr r0
/* 8054A674  38 21 00 20 */	addi r1, r1, 0x20
/* 8054A678  4E 80 00 20 */	blr 
