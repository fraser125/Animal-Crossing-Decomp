lbl_803AF6D0:
/* 803AF6D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AF6D4  7C 08 02 A6 */	mflr r0
/* 803AF6D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AF6DC  39 61 00 20 */	addi r11, r1, 0x20
/* 803AF6E0  4B CE B7 ED */	bl func_8009AECC
/* 803AF6E4  7C 9B 23 78 */	mr r27, r4
/* 803AF6E8  7C BC 2B 78 */	mr r28, r5
/* 803AF6EC  7C 7F 1B 78 */	mr r31, r3
/* 803AF6F0  3B C0 00 00 */	li r30, 0
/* 803AF6F4  3B A0 00 00 */	li r29, 0
/* 803AF6F8  48 00 00 1C */	b lbl_803AF714
lbl_803AF6FC:
/* 803AF6FC  88 7F 00 00 */	lbz r3, 0(r31)
/* 803AF700  7F 84 E3 78 */	mr r4, r28
/* 803AF704  4B FF FF 99 */	bl mFont_GetCodeWidth
/* 803AF708  7F DE 1A 14 */	add r30, r30, r3
/* 803AF70C  3B BD 00 01 */	addi r29, r29, 1
/* 803AF710  3B FF 00 01 */	addi r31, r31, 1
lbl_803AF714:
/* 803AF714  7C 1D D8 00 */	cmpw r29, r27
/* 803AF718  41 80 FF E4 */	blt lbl_803AF6FC
/* 803AF71C  7F C3 F3 78 */	mr r3, r30
/* 803AF720  39 61 00 20 */	addi r11, r1, 0x20
/* 803AF724  4B CE B7 F5 */	bl func_8009AF18
/* 803AF728  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AF72C  7C 08 03 A6 */	mtlr r0
/* 803AF730  38 21 00 20 */	addi r1, r1, 0x20
/* 803AF734  4E 80 00 20 */	blr 
