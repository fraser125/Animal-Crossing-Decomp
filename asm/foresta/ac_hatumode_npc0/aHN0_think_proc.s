lbl_8052BACC:
/* 8052BACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052BAD0  7C 08 02 A6 */	mflr r0
/* 8052BAD4  2C 05 00 01 */	cmpwi r5, 1
/* 8052BAD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052BADC  41 82 00 1C */	beq lbl_8052BAF8
/* 8052BAE0  40 80 00 1C */	bge lbl_8052BAFC
/* 8052BAE4  2C 05 00 00 */	cmpwi r5, 0
/* 8052BAE8  40 80 00 08 */	bge lbl_8052BAF0
/* 8052BAEC  48 00 00 10 */	b lbl_8052BAFC
lbl_8052BAF0:
/* 8052BAF0  4B FF FF 11 */	bl aHN0_think_init_proc
/* 8052BAF4  48 00 00 08 */	b lbl_8052BAFC
lbl_8052BAF8:
/* 8052BAF8  4B FF FE 6D */	bl aHN0_think_main_proc
lbl_8052BAFC:
/* 8052BAFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052BB00  7C 08 03 A6 */	mtlr r0
/* 8052BB04  38 21 00 10 */	addi r1, r1, 0x10
/* 8052BB08  4E 80 00 20 */	blr 
