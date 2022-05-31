lbl_803AF738:
/* 803AF738  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AF73C  7C 08 02 A6 */	mflr r0
/* 803AF740  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AF744  39 61 00 20 */	addi r11, r1, 0x20
/* 803AF748  4B CE B7 81 */	bl func_8009AEC8
/* 803AF74C  7C 7A 1B 78 */	mr r26, r3
/* 803AF750  7C 9B 23 78 */	mr r27, r4
/* 803AF754  7C BC 2B 78 */	mr r28, r5
/* 803AF758  3B C0 00 00 */	li r30, 0
/* 803AF75C  3B A0 00 00 */	li r29, 0
/* 803AF760  48 00 00 2C */	b lbl_803AF78C
lbl_803AF764:
/* 803AF764  7F FA EA 14 */	add r31, r26, r29
/* 803AF768  88 7F 00 00 */	lbz r3, 0(r31)
/* 803AF76C  28 03 00 7F */	cmplwi r3, 0x7f
/* 803AF770  41 82 00 10 */	beq lbl_803AF780
/* 803AF774  7F 84 E3 78 */	mr r4, r28
/* 803AF778  4B FF FF 25 */	bl mFont_GetCodeWidth
/* 803AF77C  7F DE 1A 14 */	add r30, r30, r3
lbl_803AF780:
/* 803AF780  7F E3 FB 78 */	mr r3, r31
/* 803AF784  48 00 00 2D */	bl mFont_CodeSize_get
/* 803AF788  7F BD 1A 14 */	add r29, r29, r3
lbl_803AF78C:
/* 803AF78C  7C 1D D8 00 */	cmpw r29, r27
/* 803AF790  41 80 FF D4 */	blt lbl_803AF764
/* 803AF794  7F C3 F3 78 */	mr r3, r30
/* 803AF798  39 61 00 20 */	addi r11, r1, 0x20
/* 803AF79C  4B CE B7 79 */	bl func_8009AF14
/* 803AF7A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AF7A4  7C 08 03 A6 */	mtlr r0
/* 803AF7A8  38 21 00 20 */	addi r1, r1, 0x20
/* 803AF7AC  4E 80 00 20 */	blr 
