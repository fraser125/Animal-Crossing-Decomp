lbl_8050F2A0:
/* 8050F2A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050F2A4  7C 08 02 A6 */	mflr r0
/* 8050F2A8  2C 04 00 C0 */	cmpwi r4, 0xc0
/* 8050F2AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050F2B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050F2B4  3B E0 00 00 */	li r31, 0
/* 8050F2B8  40 80 00 1C */	bge lbl_8050F2D4
/* 8050F2BC  7C 63 22 14 */	add r3, r3, r4
/* 8050F2C0  88 63 FF FF */	lbz r3, -1(r3)
/* 8050F2C4  4B FF FF 31 */	bl mMck_cmp_sep_nes
/* 8050F2C8  2C 03 00 01 */	cmpwi r3, 1
/* 8050F2CC  40 82 00 08 */	bne lbl_8050F2D4
/* 8050F2D0  3B E0 00 14 */	li r31, 0x14
lbl_8050F2D4:
/* 8050F2D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050F2D8  7F E3 FB 78 */	mr r3, r31
/* 8050F2DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050F2E0  7C 08 03 A6 */	mtlr r0
/* 8050F2E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8050F2E8  4E 80 00 20 */	blr 
