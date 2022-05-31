lbl_803DF61C:
/* 803DF61C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DF620  7C 08 02 A6 */	mflr r0
/* 803DF624  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DF628  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DF62C  93 C1 00 08 */	stw r30, 8(r1)
/* 803DF630  7C 7E 1B 78 */	mr r30, r3
/* 803DF634  4B FD 3F A5 */	bl mHS_get_pl_no
/* 803DF638  7C 60 1B 78 */	mr r0, r3
/* 803DF63C  7F C3 F3 78 */	mr r3, r30
/* 803DF640  7C 1F 03 78 */	mr r31, r0
/* 803DF644  7F E4 FB 78 */	mr r4, r31
/* 803DF648  4B FF FD C5 */	bl mPO_delivery_mail_with_ticket
/* 803DF64C  7F C3 F3 78 */	mr r3, r30
/* 803DF650  7F E4 FB 78 */	mr r4, r31
/* 803DF654  4B FF FC 41 */	bl mPO_delivery_mail_with_order_ftr
/* 803DF658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DF65C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DF660  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DF664  7C 08 03 A6 */	mtlr r0
/* 803DF668  38 21 00 10 */	addi r1, r1, 0x10
/* 803DF66C  4E 80 00 20 */	blr 
