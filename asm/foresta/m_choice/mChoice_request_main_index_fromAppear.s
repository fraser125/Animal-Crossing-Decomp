lbl_803846C4:
/* 803846C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803846C8  7C 08 02 A6 */	mflr r0
/* 803846CC  2C 05 00 00 */	cmpwi r5, 0
/* 803846D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803846D4  41 82 00 0C */	beq lbl_803846E0
/* 803846D8  38 80 00 02 */	li r4, 2
/* 803846DC  4B FF EF 91 */	bl mChoice_Change_request_main_index
lbl_803846E0:
/* 803846E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803846E4  7C 08 03 A6 */	mtlr r0
/* 803846E8  38 21 00 10 */	addi r1, r1, 0x10
/* 803846EC  4E 80 00 20 */	blr 
