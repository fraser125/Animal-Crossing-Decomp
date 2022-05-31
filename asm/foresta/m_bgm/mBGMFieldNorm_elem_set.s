lbl_8037A578:
/* 8037A578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037A57C  7C 08 02 A6 */	mflr r0
/* 8037A580  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8037A584  38 80 00 18 */	li r4, 0x18
/* 8037A588  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037A58C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8037A590  3C A5 00 02 */	addis r5, r5, 2
/* 8037A594  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037A598  93 C1 00 08 */	stw r30, 8(r1)
/* 8037A59C  7C 7E 1B 78 */	mr r30, r3
/* 8037A5A0  88 A5 61 22 */	lbz r5, 0x6122(r5)
/* 8037A5A4  7C 05 23 D6 */	divw r0, r5, r4
/* 8037A5A8  7C 00 21 D6 */	mullw r0, r0, r4
/* 8037A5AC  7F E0 28 50 */	subf r31, r0, r5
/* 8037A5B0  4B FF E3 E5 */	bl mBGMElem_default_set
/* 8037A5B4  7F E3 FB 78 */	mr r3, r31
/* 8037A5B8  4B FF FF B1 */	bl mBGMFieldNorm_bgm_num_get
/* 8037A5BC  98 7E 00 00 */	stb r3, 0(r30)
/* 8037A5C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037A5C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037A5C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037A5CC  7C 08 03 A6 */	mtlr r0
/* 8037A5D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8037A5D4  4E 80 00 20 */	blr 
