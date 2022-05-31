lbl_803EF224:
/* 803EF224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EF228  7C 08 02 A6 */	mflr r0
/* 803EF22C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EF230  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EF234  3B E0 00 00 */	li r31, 0
/* 803EF238  93 C1 00 08 */	stw r30, 8(r1)
/* 803EF23C  3B C0 00 00 */	li r30, 0
lbl_803EF240:
/* 803EF240  7F E3 FB 78 */	mr r3, r31
/* 803EF244  4B FF FF 65 */	bl func_803EF1A8
/* 803EF248  2C 03 00 00 */	cmpwi r3, 0
/* 803EF24C  41 82 00 08 */	beq lbl_803EF254
/* 803EF250  3B DE 00 01 */	addi r30, r30, 1
lbl_803EF254:
/* 803EF254  3B FF 00 01 */	addi r31, r31, 1
/* 803EF258  2C 1F 00 28 */	cmpwi r31, 0x28
/* 803EF25C  41 80 FF E4 */	blt lbl_803EF240
/* 803EF260  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EF264  7F C3 F3 78 */	mr r3, r30
/* 803EF268  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EF26C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803EF270  7C 08 03 A6 */	mtlr r0
/* 803EF274  38 21 00 10 */	addi r1, r1, 0x10
/* 803EF278  4E 80 00 20 */	blr 
