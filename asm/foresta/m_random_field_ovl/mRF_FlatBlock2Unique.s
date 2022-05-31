lbl_8050ABB8:
/* 8050ABB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050ABBC  7C 08 02 A6 */	mflr r0
/* 8050ABC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050ABC4  39 61 00 20 */	addi r11, r1, 0x20
/* 8050ABC8  4B B9 03 09 */	bl func_8009AED0
/* 8050ABCC  7C BE 2B 78 */	mr r30, r5
/* 8050ABD0  7C DF 33 78 */	mr r31, r6
/* 8050ABD4  7C 9D 23 78 */	mr r29, r4
/* 8050ABD8  7C 7C 1B 78 */	mr r28, r3
/* 8050ABDC  7F C4 F3 78 */	mr r4, r30
/* 8050ABE0  7F E5 FB 78 */	mr r5, r31
/* 8050ABE4  4B FF FE D9 */	bl mRF_CountFlatBlock
/* 8050ABE8  2C 03 00 00 */	cmpwi r3, 0
/* 8050ABEC  41 82 00 34 */	beq lbl_8050AC20
/* 8050ABF0  4B FF E1 F1 */	bl mRF_GetRandom
/* 8050ABF4  7C 60 1B 78 */	mr r0, r3
/* 8050ABF8  7F 83 E3 78 */	mr r3, r28
/* 8050ABFC  7C 04 03 78 */	mr r4, r0
/* 8050AC00  7F A5 EB 78 */	mr r5, r29
/* 8050AC04  7F C6 F3 78 */	mr r6, r30
/* 8050AC08  7F E7 FB 78 */	mr r7, r31
/* 8050AC0C  4B FF FF 21 */	bl mRF_RewriteFlatType
/* 8050AC10  2C 03 FF FF */	cmpwi r3, -1
/* 8050AC14  41 82 00 0C */	beq lbl_8050AC20
/* 8050AC18  38 60 00 01 */	li r3, 1
/* 8050AC1C  48 00 00 08 */	b lbl_8050AC24
lbl_8050AC20:
/* 8050AC20  38 60 00 00 */	li r3, 0
lbl_8050AC24:
/* 8050AC24  39 61 00 20 */	addi r11, r1, 0x20
/* 8050AC28  4B B9 02 F5 */	bl func_8009AF1C
/* 8050AC2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050AC30  7C 08 03 A6 */	mtlr r0
/* 8050AC34  38 21 00 20 */	addi r1, r1, 0x20
/* 8050AC38  4E 80 00 20 */	blr 
