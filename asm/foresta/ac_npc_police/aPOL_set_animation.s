lbl_8056A284:
/* 8056A284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056A288  7C 08 02 A6 */	mflr r0
/* 8056A28C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8056A290  3C A0 80 6C */	lis r5, animeSeqNo_501@ha /* 0x806BE788@ha */
/* 8056A294  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056A298  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8056A29C  38 C5 E7 88 */	addi r6, r5, animeSeqNo_501@l /* 0x806BE788@l */
/* 8056A2A0  38 A0 00 00 */	li r5, 0
/* 8056A2A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056A2A8  3C 84 00 02 */	addis r4, r4, 2
/* 8056A2AC  93 C1 00 08 */	stw r30, 8(r1)
/* 8056A2B0  7C 7E 1B 78 */	mr r30, r3
/* 8056A2B4  80 84 60 4C */	lwz r4, 0x604c(r4)
/* 8056A2B8  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 8056A2BC  81 84 01 14 */	lwz r12, 0x114(r4)
/* 8056A2C0  54 1F 10 3A */	slwi r31, r0, 2
/* 8056A2C4  7C 86 F8 2E */	lwzx r4, r6, r31
/* 8056A2C8  7D 89 03 A6 */	mtctr r12
/* 8056A2CC  4E 80 04 21 */	bctrl 
/* 8056A2D0  38 00 00 05 */	li r0, 5
/* 8056A2D4  3C 60 80 6C */	lis r3, morph_counter@ha /* 0x806BE790@ha */
/* 8056A2D8  98 1E 07 53 */	stb r0, 0x753(r30)
/* 8056A2DC  38 63 E7 90 */	addi r3, r3, morph_counter@l /* 0x806BE790@l */
/* 8056A2E0  7C 03 FC 2E */	lfsx f0, r3, r31
/* 8056A2E4  D0 1E 01 C8 */	stfs f0, 0x1c8(r30)
/* 8056A2E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056A2EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056A2F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056A2F4  7C 08 03 A6 */	mtlr r0
/* 8056A2F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8056A2FC  4E 80 00 20 */	blr 
