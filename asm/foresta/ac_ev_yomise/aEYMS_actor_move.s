lbl_80526DE8:
/* 80526DE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80526DEC  7C 08 02 A6 */	mflr r0
/* 80526DF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80526DF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80526DF8  7C 9F 23 78 */	mr r31, r4
/* 80526DFC  93 C1 00 08 */	stw r30, 8(r1)
/* 80526E00  7C 7E 1B 78 */	mr r30, r3
/* 80526E04  4B FF F8 91 */	bl aYMS_make_utiwa
/* 80526E08  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80526E0C  7F C3 F3 78 */	mr r3, r30
/* 80526E10  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80526E14  7F E4 FB 78 */	mr r4, r31
/* 80526E18  3C A5 00 02 */	addis r5, r5, 2
/* 80526E1C  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80526E20  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 80526E24  7D 89 03 A6 */	mtctr r12
/* 80526E28  4E 80 04 21 */	bctrl 
/* 80526E2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80526E30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80526E34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80526E38  7C 08 03 A6 */	mtlr r0
/* 80526E3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80526E40  4E 80 00 20 */	blr 
