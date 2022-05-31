lbl_80471464:
/* 80471464  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80471468  7C 08 02 A6 */	mflr r0
/* 8047146C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80471470  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80471474  7C 7F 1B 78 */	mr r31, r3
/* 80471478  4B FF FA 99 */	bl aMR_CountAppointFurniture
/* 8047147C  2C 03 00 00 */	cmpwi r3, 0
/* 80471480  40 82 00 18 */	bne lbl_80471498
/* 80471484  3C 60 81 1D */	lis r3, l_bank_index_table@ha /* 0x811CDFF4@ha */
/* 80471488  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8047148C  38 63 DF F4 */	addi r3, r3, l_bank_index_table@l /* 0x811CDFF4@l */
/* 80471490  38 80 00 FF */	li r4, 0xff
/* 80471494  7C 83 01 AE */	stbx r4, r3, r0
lbl_80471498:
/* 80471498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047149C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804714A0  7C 08 03 A6 */	mtlr r0
/* 804714A4  38 21 00 10 */	addi r1, r1, 0x10
/* 804714A8  4E 80 00 20 */	blr 
