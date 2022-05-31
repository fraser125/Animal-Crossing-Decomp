lbl_80587AC4:
/* 80587AC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80587AC8  7C 08 02 A6 */	mflr r0
/* 80587ACC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80587AD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80587AD4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80587AD8  3C A5 00 02 */	addis r5, r5, 2
/* 80587ADC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80587AE0  7C 9F 23 78 */	mr r31, r4
/* 80587AE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80587AE8  7C 7E 1B 78 */	mr r30, r3
/* 80587AEC  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80587AF0  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 80587AF4  7D 89 03 A6 */	mtctr r12
/* 80587AF8  4E 80 04 21 */	bctrl 
/* 80587AFC  88 1E 09 A9 */	lbz r0, 0x9a9(r30)
/* 80587B00  28 00 00 01 */	cmplwi r0, 1
/* 80587B04  40 82 00 10 */	bne lbl_80587B14
/* 80587B08  7F C3 F3 78 */	mr r3, r30
/* 80587B0C  7F E4 FB 78 */	mr r4, r31
/* 80587B10  4B FF FF 11 */	bl aPST_make_umbrella
lbl_80587B14:
/* 80587B14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80587B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80587B1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80587B20  7C 08 03 A6 */	mtlr r0
/* 80587B24  38 21 00 10 */	addi r1, r1, 0x10
/* 80587B28  4E 80 00 20 */	blr 
