lbl_803BD128:
/* 803BD128  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BD12C  7C 08 02 A6 */	mflr r0
/* 803BD130  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BD134  4B FF FE E9 */	bl mMl_send_postoffice_mail
/* 803BD138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BD13C  7C 08 03 A6 */	mtlr r0
/* 803BD140  38 21 00 10 */	addi r1, r1, 0x10
/* 803BD144  4E 80 00 20 */	blr 
