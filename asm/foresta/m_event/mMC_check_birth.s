lbl_8039F274:
/* 8039F274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039F278  7C 08 02 A6 */	mflr r0
/* 8039F27C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039F280  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039F284  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039F288  3C 63 00 02 */	addis r3, r3, 2
/* 8039F28C  A0 03 3F 30 */	lhz r0, 0x3f30(r3)
/* 8039F290  28 00 FF FF */	cmplwi r0, 0xffff
/* 8039F294  40 82 00 0C */	bne lbl_8039F2A0
/* 8039F298  38 60 00 00 */	li r3, 0
/* 8039F29C  48 00 00 20 */	b lbl_8039F2BC
lbl_8039F2A0:
/* 8039F2A0  88 03 41 42 */	lbz r0, 0x4142(r3)
/* 8039F2A4  28 00 00 0A */	cmplwi r0, 0xa
/* 8039F2A8  41 80 00 10 */	blt lbl_8039F2B8
/* 8039F2AC  4B FF FF 61 */	bl mMC_mask_cat_init
/* 8039F2B0  38 60 00 00 */	li r3, 0
/* 8039F2B4  48 00 00 08 */	b lbl_8039F2BC
lbl_8039F2B8:
/* 8039F2B8  38 60 00 01 */	li r3, 1
lbl_8039F2BC:
/* 8039F2BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039F2C0  7C 08 03 A6 */	mtlr r0
/* 8039F2C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8039F2C8  4E 80 00 20 */	blr 
