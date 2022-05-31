lbl_804D56C4:
/* 804D56C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D56C8  7C 08 02 A6 */	mflr r0
/* 804D56CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D56D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D56D4  93 C1 00 08 */	stw r30, 8(r1)
/* 804D56D8  7C 7E 1B 78 */	mr r30, r3
/* 804D56DC  80 83 0C F8 */	lwz r4, 0xcf8(r3)
/* 804D56E0  48 00 B2 C5 */	bl Player_actor_Get_ItemKind
/* 804D56E4  7C 7F 07 75 */	extsb. r31, r3
/* 804D56E8  40 80 00 58 */	bge lbl_804D5740
/* 804D56EC  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804D56F0  3C 60 80 64 */	lis r3, lit_950@ha /* 0x806468F4@ha */
/* 804D56F4  C0 24 65 68 */	lfs f1, lit_604@l(r4)  /* 0x80646568@l */
/* 804D56F8  2C 1F 00 37 */	cmpwi r31, 0x37
/* 804D56FC  C0 63 68 F4 */	lfs f3, lit_950@l(r3)  /* 0x806468F4@l */
/* 804D5700  7F C3 F3 78 */	mr r3, r30
/* 804D5704  FC 40 08 90 */	fmr f2, f1
/* 804D5708  38 80 FF FF */	li r4, -1
/* 804D570C  38 A0 FF FF */	li r5, -1
/* 804D5710  38 00 00 00 */	li r0, 0
/* 804D5714  41 80 00 10 */	blt lbl_804D5724
/* 804D5718  2C 1F 00 3F */	cmpwi r31, 0x3f
/* 804D571C  40 80 00 08 */	bge lbl_804D5724
/* 804D5720  38 00 00 01 */	li r0, 1
lbl_804D5724:
/* 804D5724  7C 00 00 34 */	cntlzw r0, r0
/* 804D5728  54 06 D9 7E */	srwi r6, r0, 5
/* 804D572C  48 00 B9 81 */	bl Player_actor_LoadOrDestruct_Item
/* 804D5730  7F C3 F3 78 */	mr r3, r30
/* 804D5734  38 80 00 00 */	li r4, 0
/* 804D5738  4B FF FF 55 */	bl Player_actor_Set_now_item_main_index
/* 804D573C  9B FE 11 2B */	stb r31, 0x112b(r30)
lbl_804D5740:
/* 804D5740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5744  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D5748  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D574C  7C 08 03 A6 */	mtlr r0
/* 804D5750  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5754  4E 80 00 20 */	blr 
