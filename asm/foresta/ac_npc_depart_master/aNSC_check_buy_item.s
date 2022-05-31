lbl_8054E49C:
/* 8054E49C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054E4A0  7C 08 02 A6 */	mflr r0
/* 8054E4A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054E4A8  A8 04 01 7A */	lha r0, 0x17a(r4)
/* 8054E4AC  2C 00 00 01 */	cmpwi r0, 1
/* 8054E4B0  40 82 00 0C */	bne lbl_8054E4BC
/* 8054E4B4  4B FF FE 45 */	bl aNSC_check_buy_item_single
/* 8054E4B8  48 00 00 08 */	b lbl_8054E4C0
lbl_8054E4BC:
/* 8054E4BC  4B FF FF 55 */	bl aNSC_check_buy_item_plural
lbl_8054E4C0:
/* 8054E4C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054E4C4  7C 08 03 A6 */	mtlr r0
/* 8054E4C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8054E4CC  4E 80 00 20 */	blr 
