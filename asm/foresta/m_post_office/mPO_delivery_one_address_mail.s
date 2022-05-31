lbl_803DF5C0:
/* 803DF5C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DF5C4  7C 08 02 A6 */	mflr r0
/* 803DF5C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DF5CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DF5D0  7C 7F 1B 78 */	mr r31, r3
/* 803DF5D4  4B FF FE F5 */	bl mPO_delivery_mail_sub
/* 803DF5D8  2C 03 00 01 */	cmpwi r3, 1
/* 803DF5DC  40 82 00 2C */	bne lbl_803DF608
/* 803DF5E0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DF5E4  38 00 00 01 */	li r0, 1
/* 803DF5E8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DF5EC  3C 83 00 02 */	addis r4, r3, 2
/* 803DF5F0  7C 00 F8 30 */	slw r0, r0, r31
/* 803DF5F4  68 00 00 0F */	xori r0, r0, 0xf
/* 803DF5F8  A8 64 06 98 */	lha r3, 0x698(r4)
/* 803DF5FC  7C 00 07 34 */	extsh r0, r0
/* 803DF600  7C 60 00 38 */	and r0, r3, r0
/* 803DF604  B0 04 06 98 */	sth r0, 0x698(r4)
lbl_803DF608:
/* 803DF608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DF60C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DF610  7C 08 03 A6 */	mtlr r0
/* 803DF614  38 21 00 10 */	addi r1, r1, 0x10
/* 803DF618  4E 80 00 20 */	blr 
