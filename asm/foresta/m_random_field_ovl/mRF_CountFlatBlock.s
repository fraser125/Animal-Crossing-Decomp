lbl_8050AABC:
/* 8050AABC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050AAC0  7C 08 02 A6 */	mflr r0
/* 8050AAC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050AAC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8050AACC  4B B9 04 01 */	bl func_8009AECC
/* 8050AAD0  7C 7B 1B 78 */	mr r27, r3
/* 8050AAD4  7C 9C 23 78 */	mr r28, r4
/* 8050AAD8  7C BD 2B 78 */	mr r29, r5
/* 8050AADC  3B C0 00 00 */	li r30, 0
/* 8050AAE0  3B E0 00 00 */	li r31, 0
lbl_8050AAE4:
/* 8050AAE4  7F 63 DB 78 */	mr r3, r27
/* 8050AAE8  7F E4 FB 78 */	mr r4, r31
/* 8050AAEC  7F 85 E3 78 */	mr r5, r28
/* 8050AAF0  7F A6 EB 78 */	mr r6, r29
/* 8050AAF4  4B FF FE B5 */	bl mRF_JudgeFlatBlock
/* 8050AAF8  2C 03 00 00 */	cmpwi r3, 0
/* 8050AAFC  41 82 00 08 */	beq lbl_8050AB04
/* 8050AB00  3B DE 00 01 */	addi r30, r30, 1
lbl_8050AB04:
/* 8050AB04  3B FF 00 01 */	addi r31, r31, 1
/* 8050AB08  2C 1F 00 38 */	cmpwi r31, 0x38
/* 8050AB0C  41 80 FF D8 */	blt lbl_8050AAE4
/* 8050AB10  7F C3 F3 78 */	mr r3, r30
/* 8050AB14  39 61 00 20 */	addi r11, r1, 0x20
/* 8050AB18  4B B9 04 01 */	bl func_8009AF18
/* 8050AB1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050AB20  7C 08 03 A6 */	mtlr r0
/* 8050AB24  38 21 00 20 */	addi r1, r1, 0x20
/* 8050AB28  4E 80 00 20 */	blr 
