lbl_8051ED58:
/* 8051ED58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051ED5C  7C 08 02 A6 */	mflr r0
/* 8051ED60  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051ED64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051ED68  38 00 00 00 */	li r0, 0
/* 8051ED6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051ED70  7C 9F 23 78 */	mr r31, r4
/* 8051ED74  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 8051ED78  93 C1 00 08 */	stw r30, 8(r1)
/* 8051ED7C  3C A4 00 02 */	addis r5, r4, 2
/* 8051ED80  7C 7E 1B 78 */	mr r30, r3
/* 8051ED84  38 80 00 73 */	li r4, 0x73
/* 8051ED88  98 03 07 F5 */	stb r0, 0x7f5(r3)
/* 8051ED8C  80 C5 60 4C */	lwz r6, 0x604c(r5)
/* 8051ED90  38 A0 00 00 */	li r5, 0
/* 8051ED94  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8051ED98  7D 89 03 A6 */	mtctr r12
/* 8051ED9C  4E 80 04 21 */	bctrl 
/* 8051EDA0  38 00 00 00 */	li r0, 0
/* 8051EDA4  7F C3 F3 78 */	mr r3, r30
/* 8051EDA8  90 1E 01 BC */	stw r0, 0x1bc(r30)
/* 8051EDAC  7F E4 FB 78 */	mr r4, r31
/* 8051EDB0  4B FF FE ED */	bl aEDZ_normal_wait_init
/* 8051EDB4  38 80 00 00 */	li r4, 0
/* 8051EDB8  38 60 00 15 */	li r3, 0x15
/* 8051EDBC  98 9E 08 BE */	stb r4, 0x8be(r30)
/* 8051EDC0  38 00 00 32 */	li r0, 0x32
/* 8051EDC4  98 9E 09 73 */	stb r4, 0x973(r30)
/* 8051EDC8  B0 7E 09 74 */	sth r3, 0x974(r30)
/* 8051EDCC  98 1E 00 D6 */	stb r0, 0xd6(r30)
/* 8051EDD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051EDD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051EDD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051EDDC  7C 08 03 A6 */	mtlr r0
/* 8051EDE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8051EDE4  4E 80 00 20 */	blr 
