lbl_8055B47C:
/* 8055B47C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055B480  7C 08 02 A6 */	mflr r0
/* 8055B484  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055B488  A8 04 01 7A */	lha r0, 0x17a(r4)
/* 8055B48C  2C 00 00 01 */	cmpwi r0, 1
/* 8055B490  40 82 00 0C */	bne lbl_8055B49C
/* 8055B494  4B FF FE 45 */	bl aNSC_check_buy_item_single
/* 8055B498  48 00 00 08 */	b lbl_8055B4A0
lbl_8055B49C:
/* 8055B49C  4B FF FF 55 */	bl aNSC_check_buy_item_plural
lbl_8055B4A0:
/* 8055B4A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055B4A4  7C 08 03 A6 */	mtlr r0
/* 8055B4A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8055B4AC  4E 80 00 20 */	blr 
