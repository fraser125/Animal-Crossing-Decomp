lbl_8058AFE4:
/* 8058AFE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058AFE8  7C 08 02 A6 */	mflr r0
/* 8058AFEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058AFF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058AFF4  7C 7F 1B 78 */	mr r31, r3
/* 8058AFF8  4B FF FE E5 */	bl aTMN1_normal_wait_init
/* 8058AFFC  38 00 00 0A */	li r0, 0xa
/* 8058B000  B0 1F 09 A0 */	sth r0, 0x9a0(r31)
/* 8058B004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058B008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058B00C  7C 08 03 A6 */	mtlr r0
/* 8058B010  38 21 00 10 */	addi r1, r1, 0x10
/* 8058B014  4E 80 00 20 */	blr 
