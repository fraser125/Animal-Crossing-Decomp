lbl_8053EC94:
/* 8053EC94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053EC98  7C 08 02 A6 */	mflr r0
/* 8053EC9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053ECA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053ECA4  7C 7F 1B 78 */	mr r31, r3
/* 8053ECA8  7C 83 23 78 */	mr r3, r4
/* 8053ECAC  88 1F 07 FD */	lbz r0, 0x7fd(r31)
/* 8053ECB0  2C 00 00 02 */	cmpwi r0, 2
/* 8053ECB4  41 82 00 44 */	beq lbl_8053ECF8
/* 8053ECB8  40 80 00 10 */	bge lbl_8053ECC8
/* 8053ECBC  2C 00 00 01 */	cmpwi r0, 1
/* 8053ECC0  40 80 00 14 */	bge lbl_8053ECD4
/* 8053ECC4  48 00 00 34 */	b lbl_8053ECF8
lbl_8053ECC8:
/* 8053ECC8  2C 00 00 04 */	cmpwi r0, 4
/* 8053ECCC  40 80 00 2C */	bge lbl_8053ECF8
/* 8053ECD0  48 00 00 10 */	b lbl_8053ECE0
lbl_8053ECD4:
/* 8053ECD4  4B E9 A9 6D */	bl get_player_actor_withoutCheck
/* 8053ECD8  90 7F 09 2C */	stw r3, 0x92c(r31)
/* 8053ECDC  48 00 00 24 */	b lbl_8053ED00
lbl_8053ECE0:
/* 8053ECE0  A0 9F 07 FE */	lhz r4, 0x7fe(r31)
/* 8053ECE4  38 63 1D A8 */	addi r3, r3, 0x1da8
/* 8053ECE8  38 A0 00 04 */	li r5, 4
/* 8053ECEC  4B E3 70 55 */	bl Actor_info_fgName_search
/* 8053ECF0  90 7F 09 2C */	stw r3, 0x92c(r31)
/* 8053ECF4  48 00 00 0C */	b lbl_8053ED00
lbl_8053ECF8:
/* 8053ECF8  38 00 00 00 */	li r0, 0
/* 8053ECFC  90 1F 09 2C */	stw r0, 0x92c(r31)
lbl_8053ED00:
/* 8053ED00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053ED04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053ED08  7C 08 03 A6 */	mtlr r0
/* 8053ED0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8053ED10  4E 80 00 20 */	blr 
