lbl_803D8A9C:
/* 803D8A9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D8AA0  7C 08 02 A6 */	mflr r0
/* 803D8AA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D8AA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D8AAC  7C 9F 23 78 */	mr r31, r4
/* 803D8AB0  93 C1 00 08 */	stw r30, 8(r1)
/* 803D8AB4  7C 7E 1B 78 */	mr r30, r3
/* 803D8AB8  38 7F 1D EC */	addi r3, r31, 0x1dec
/* 803D8ABC  48 01 6B 41 */	bl load_player
/* 803D8AC0  7F E3 FB 78 */	mr r3, r31
/* 803D8AC4  4B FF FF 41 */	bl func_803D8A04
/* 803D8AC8  3C 80 81 17 */	lis r4, data_8116EDD0@ha /* 0x8116EDD0@ha */
/* 803D8ACC  7F C3 F3 78 */	mr r3, r30
/* 803D8AD0  38 A4 ED D0 */	addi r5, r4, data_8116EDD0@l /* 0x8116EDD0@l */
/* 803D8AD4  7F E4 FB 78 */	mr r4, r31
/* 803D8AD8  81 85 00 00 */	lwz r12, 0(r5)
/* 803D8ADC  7D 89 03 A6 */	mtctr r12
/* 803D8AE0  4E 80 04 21 */	bctrl 
/* 803D8AE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D8AE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D8AEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D8AF0  7C 08 03 A6 */	mtlr r0
/* 803D8AF4  38 21 00 10 */	addi r1, r1, 0x10
/* 803D8AF8  4E 80 00 20 */	blr 
