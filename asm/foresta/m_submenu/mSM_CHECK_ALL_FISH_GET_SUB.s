lbl_803EF37C:
/* 803EF37C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EF380  7C 08 02 A6 */	mflr r0
/* 803EF384  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EF388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EF38C  3B E0 00 00 */	li r31, 0
/* 803EF390  93 C1 00 08 */	stw r30, 8(r1)
/* 803EF394  3B C0 00 00 */	li r30, 0
lbl_803EF398:
/* 803EF398  7F E3 FB 78 */	mr r3, r31
/* 803EF39C  4B FF FF 65 */	bl mSM_COLLECT_FISH_GET
/* 803EF3A0  2C 03 00 00 */	cmpwi r3, 0
/* 803EF3A4  41 82 00 08 */	beq lbl_803EF3AC
/* 803EF3A8  3B DE 00 01 */	addi r30, r30, 1
lbl_803EF3AC:
/* 803EF3AC  3B FF 00 01 */	addi r31, r31, 1
/* 803EF3B0  2C 1F 00 28 */	cmpwi r31, 0x28
/* 803EF3B4  41 80 FF E4 */	blt lbl_803EF398
/* 803EF3B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EF3BC  7F C3 F3 78 */	mr r3, r30
/* 803EF3C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EF3C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803EF3C8  7C 08 03 A6 */	mtlr r0
/* 803EF3CC  38 21 00 10 */	addi r1, r1, 0x10
/* 803EF3D0  4E 80 00 20 */	blr 
