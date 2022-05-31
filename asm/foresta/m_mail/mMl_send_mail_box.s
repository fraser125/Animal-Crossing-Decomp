lbl_803BCE24:
/* 803BCE24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BCE28  7C 08 02 A6 */	mflr r0
/* 803BCE2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BCE30  38 00 00 00 */	li r0, 0
/* 803BCE34  90 01 00 08 */	stw r0, 8(r1)
/* 803BCE38  4B FF FF 11 */	bl mMl_send_mail_box_com
/* 803BCE3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BCE40  7C 08 03 A6 */	mtlr r0
/* 803BCE44  38 21 00 10 */	addi r1, r1, 0x10
/* 803BCE48  4E 80 00 20 */	blr 
