lbl_803DF294:
/* 803DF294  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DF298  7C 08 02 A6 */	mflr r0
/* 803DF29C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DF2A0  39 61 00 20 */	addi r11, r1, 0x20
/* 803DF2A4  4B CB BC 29 */	bl func_8009AECC
/* 803DF2A8  1C A4 24 40 */	mulli r5, r4, 0x2440
/* 803DF2AC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803DF2B0  7C 7B 1B 78 */	mr r27, r3
/* 803DF2B4  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803DF2B8  7C 60 2A 14 */	add r3, r0, r5
/* 803DF2BC  3B C3 00 20 */	addi r30, r3, 0x20
/* 803DF2C0  88 03 10 A6 */	lbz r0, 0x10a6(r3)
/* 803DF2C4  28 00 00 01 */	cmplwi r0, 1
/* 803DF2C8  40 82 00 48 */	bne lbl_803DF310
/* 803DF2CC  3B BE 10 A8 */	addi r29, r30, 0x10a8
/* 803DF2D0  3B 80 00 00 */	li r28, 0
/* 803DF2D4  3B E0 00 00 */	li r31, 0
lbl_803DF2D8:
/* 803DF2D8  A0 1D 00 00 */	lhz r0, 0(r29)
/* 803DF2DC  28 00 00 00 */	cmplwi r0, 0
/* 803DF2E0  41 82 00 20 */	beq lbl_803DF300
/* 803DF2E4  7F 63 DB 78 */	mr r3, r27
/* 803DF2E8  7F C4 F3 78 */	mr r4, r30
/* 803DF2EC  7F A5 EB 78 */	mr r5, r29
/* 803DF2F0  4B FF FF 25 */	bl mPO_delivery_mail_with_order_ftr_sub
/* 803DF2F4  2C 03 00 00 */	cmpwi r3, 0
/* 803DF2F8  41 82 00 18 */	beq lbl_803DF310
/* 803DF2FC  B3 FD 00 00 */	sth r31, 0(r29)
lbl_803DF300:
/* 803DF300  3B 9C 00 01 */	addi r28, r28, 1
/* 803DF304  3B BD 00 04 */	addi r29, r29, 4
/* 803DF308  2C 1C 00 05 */	cmpwi r28, 5
/* 803DF30C  41 80 FF CC */	blt lbl_803DF2D8
lbl_803DF310:
/* 803DF310  39 61 00 20 */	addi r11, r1, 0x20
/* 803DF314  4B CB BC 05 */	bl func_8009AF18
/* 803DF318  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DF31C  7C 08 03 A6 */	mtlr r0
/* 803DF320  38 21 00 20 */	addi r1, r1, 0x20
/* 803DF324  4E 80 00 20 */	blr 
