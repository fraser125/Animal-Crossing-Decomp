lbl_80546B84:
/* 80546B84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80546B88  7C 08 02 A6 */	mflr r0
/* 80546B8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80546B90  A8 04 01 7A */	lha r0, 0x17a(r4)
/* 80546B94  2C 00 00 01 */	cmpwi r0, 1
/* 80546B98  40 82 00 0C */	bne lbl_80546BA4
/* 80546B9C  4B FF FE 45 */	bl aNSC_check_buy_item_single
/* 80546BA0  48 00 00 08 */	b lbl_80546BA8
lbl_80546BA4:
/* 80546BA4  4B FF FF 55 */	bl aNSC_check_buy_item_plural
lbl_80546BA8:
/* 80546BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80546BAC  7C 08 03 A6 */	mtlr r0
/* 80546BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80546BB4  4E 80 00 20 */	blr 
