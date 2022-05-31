lbl_803BCFF8:
/* 803BCFF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BCFFC  7C 08 02 A6 */	mflr r0
/* 803BD000  39 40 00 00 */	li r10, 0
/* 803BD004  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BD008  4B FF FF 4D */	bl mMl_send_mail_com
/* 803BD00C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BD010  7C 08 03 A6 */	mtlr r0
/* 803BD014  38 21 00 10 */	addi r1, r1, 0x10
/* 803BD018  4E 80 00 20 */	blr 
