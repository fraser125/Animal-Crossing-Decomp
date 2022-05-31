lbl_803CCF6C:
/* 803CCF6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CCF70  7C 08 02 A6 */	mflr r0
/* 803CCF74  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CCF78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CCF7C  3B E0 00 02 */	li r31, 2
/* 803CCF80  48 14 27 51 */	bl mMck_check_key_hit_nes
/* 803CCF84  2C 03 00 64 */	cmpwi r3, 0x64
/* 803CCF88  41 80 00 0C */	blt lbl_803CCF94
/* 803CCF8C  3B E0 00 01 */	li r31, 1
/* 803CCF90  48 00 00 10 */	b lbl_803CCFA0
lbl_803CCF94:
/* 803CCF94  2C 03 00 32 */	cmpwi r3, 0x32
/* 803CCF98  40 80 00 08 */	bge lbl_803CCFA0
/* 803CCF9C  3B E0 00 00 */	li r31, 0
lbl_803CCFA0:
/* 803CCFA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CCFA4  7F E3 FB 78 */	mr r3, r31
/* 803CCFA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CCFAC  7C 08 03 A6 */	mtlr r0
/* 803CCFB0  38 21 00 10 */	addi r1, r1, 0x10
/* 803CCFB4  4E 80 00 20 */	blr 
