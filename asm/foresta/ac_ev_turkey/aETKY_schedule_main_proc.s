lbl_805936F0:
/* 805936F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805936F4  7C 08 02 A6 */	mflr r0
/* 805936F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805936FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80593700  4B B0 77 D5 */	bl func_8009AED4
/* 80593704  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80593708  7C 7D 1B 78 */	mr r29, r3
/* 8059370C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80593710  7C 9E 23 78 */	mr r30, r4
/* 80593714  3F E5 00 02 */	addis r31, r5, 2
/* 80593718  38 A0 FF FF */	li r5, -1
/* 8059371C  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 80593720  38 C0 00 01 */	li r6, 1
/* 80593724  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80593728  7D 89 03 A6 */	mtctr r12
/* 8059372C  4E 80 04 21 */	bctrl 
/* 80593730  2C 03 00 00 */	cmpwi r3, 0
/* 80593734  40 82 00 24 */	bne lbl_80593758
/* 80593738  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8059373C  7F A3 EB 78 */	mr r3, r29
/* 80593740  7F C4 F3 78 */	mr r4, r30
/* 80593744  38 A0 FF FF */	li r5, -1
/* 80593748  81 86 01 20 */	lwz r12, 0x120(r6)
/* 8059374C  38 C0 00 02 */	li r6, 2
/* 80593750  7D 89 03 A6 */	mtctr r12
/* 80593754  4E 80 04 21 */	bctrl 
lbl_80593758:
/* 80593758  39 61 00 20 */	addi r11, r1, 0x20
/* 8059375C  4B B0 77 C5 */	bl func_8009AF20
/* 80593760  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80593764  7C 08 03 A6 */	mtlr r0
/* 80593768  38 21 00 20 */	addi r1, r1, 0x20
/* 8059376C  4E 80 00 20 */	blr 
