lbl_8058B190:
/* 8058B190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058B194  7C 08 02 A6 */	mflr r0
/* 8058B198  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8058B19C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058B1A0  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8058B1A4  3C C5 00 02 */	addis r6, r5, 2
/* 8058B1A8  38 80 00 72 */	li r4, 0x72
/* 8058B1AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058B1B0  7C 7F 1B 78 */	mr r31, r3
/* 8058B1B4  38 A0 00 00 */	li r5, 0
/* 8058B1B8  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 8058B1BC  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8058B1C0  7D 89 03 A6 */	mtctr r12
/* 8058B1C4  4E 80 04 21 */	bctrl 
/* 8058B1C8  88 7F 09 AF */	lbz r3, 0x9af(r31)
/* 8058B1CC  38 00 00 01 */	li r0, 1
/* 8058B1D0  38 63 FF FF */	addi r3, r3, -1
/* 8058B1D4  98 7F 09 AF */	stb r3, 0x9af(r31)
/* 8058B1D8  98 1F 09 B0 */	stb r0, 0x9b0(r31)
/* 8058B1DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058B1E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058B1E4  7C 08 03 A6 */	mtlr r0
/* 8058B1E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8058B1EC  4E 80 00 20 */	blr 
