lbl_8058BCB8:
/* 8058BCB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058BCBC  7C 08 02 A6 */	mflr r0
/* 8058BCC0  38 80 00 04 */	li r4, 4
/* 8058BCC4  38 A0 00 00 */	li r5, 0
/* 8058BCC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058BCCC  38 C0 00 00 */	li r6, 0
/* 8058BCD0  38 E0 00 00 */	li r7, 0
/* 8058BCD4  39 00 00 00 */	li r8, 0
/* 8058BCD8  39 20 00 00 */	li r9, 0
/* 8058BCDC  4B FF F9 71 */	bl aTKN0_set_request_act
/* 8058BCE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058BCE4  7C 08 03 A6 */	mtlr r0
/* 8058BCE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8058BCEC  4E 80 00 20 */	blr 
