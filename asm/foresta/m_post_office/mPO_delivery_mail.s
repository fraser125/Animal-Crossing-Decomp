lbl_803DF830:
/* 803DF830  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DF834  7C 08 02 A6 */	mflr r0
/* 803DF838  38 60 FF FF */	li r3, -1
/* 803DF83C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DF840  4B FF FC 89 */	bl mPO_delivery_mail_sub
/* 803DF844  4B FF F6 3D */	bl mPO_adjust_keep_mail
/* 803DF848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DF84C  7C 08 03 A6 */	mtlr r0
/* 803DF850  38 21 00 10 */	addi r1, r1, 0x10
/* 803DF854  4E 80 00 20 */	blr 
