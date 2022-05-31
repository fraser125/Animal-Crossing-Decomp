lbl_803845D4:
/* 803845D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803845D8  7C 08 02 A6 */	mflr r0
/* 803845DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803845E0  4B FF EF 85 */	bl mChoice_init
/* 803845E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803845E8  7C 08 03 A6 */	mtlr r0
/* 803845EC  38 21 00 10 */	addi r1, r1, 0x10
/* 803845F0  4E 80 00 20 */	blr 
