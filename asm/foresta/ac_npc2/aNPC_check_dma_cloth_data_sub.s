lbl_80544AA4:
/* 80544AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80544AA8  7C 08 02 A6 */	mflr r0
/* 80544AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80544AB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80544AB4  3B E0 00 01 */	li r31, 1
/* 80544AB8  93 C1 00 08 */	stw r30, 8(r1)
/* 80544ABC  7C 7E 1B 78 */	mr r30, r3
/* 80544AC0  4B FF 67 0D */	bl aNPC_dma_regist_check_cloth_data
/* 80544AC4  2C 03 00 00 */	cmpwi r3, 0
/* 80544AC8  40 82 00 10 */	bne lbl_80544AD8
/* 80544ACC  7F C3 F3 78 */	mr r3, r30
/* 80544AD0  4B FF 66 29 */	bl aNPC_dma_regist_cloth_data
/* 80544AD4  3B E0 00 00 */	li r31, 0
lbl_80544AD8:
/* 80544AD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80544ADC  7F E3 FB 78 */	mr r3, r31
/* 80544AE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80544AE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80544AE8  7C 08 03 A6 */	mtlr r0
/* 80544AEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80544AF0  4E 80 00 20 */	blr 
