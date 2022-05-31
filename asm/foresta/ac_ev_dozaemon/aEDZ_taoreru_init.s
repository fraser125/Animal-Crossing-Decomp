lbl_8051ECD4:
/* 8051ECD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051ECD8  7C 08 02 A6 */	mflr r0
/* 8051ECDC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051ECE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051ECE4  38 00 00 00 */	li r0, 0
/* 8051ECE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051ECEC  7C 9F 23 78 */	mr r31, r4
/* 8051ECF0  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 8051ECF4  93 C1 00 08 */	stw r30, 8(r1)
/* 8051ECF8  3C A4 00 02 */	addis r5, r4, 2
/* 8051ECFC  7C 7E 1B 78 */	mr r30, r3
/* 8051ED00  38 80 00 74 */	li r4, 0x74
/* 8051ED04  98 03 07 F5 */	stb r0, 0x7f5(r3)
/* 8051ED08  80 C5 60 4C */	lwz r6, 0x604c(r5)
/* 8051ED0C  38 A0 00 00 */	li r5, 0
/* 8051ED10  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8051ED14  7D 89 03 A6 */	mtctr r12
/* 8051ED18  4E 80 04 21 */	bctrl 
/* 8051ED1C  7F C3 F3 78 */	mr r3, r30
/* 8051ED20  7F E4 FB 78 */	mr r4, r31
/* 8051ED24  4B FF FF 79 */	bl aEDZ_normal_wait_init
/* 8051ED28  38 00 00 01 */	li r0, 1
/* 8051ED2C  38 60 00 02 */	li r3, 2
/* 8051ED30  98 1E 08 BE */	stb r0, 0x8be(r30)
/* 8051ED34  38 00 00 75 */	li r0, 0x75
/* 8051ED38  98 7E 09 73 */	stb r3, 0x973(r30)
/* 8051ED3C  B0 1E 09 74 */	sth r0, 0x974(r30)
/* 8051ED40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051ED44  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051ED48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051ED4C  7C 08 03 A6 */	mtlr r0
/* 8051ED50  38 21 00 10 */	addi r1, r1, 0x10
/* 8051ED54  4E 80 00 20 */	blr 
