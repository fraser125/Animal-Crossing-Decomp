lbl_8057811C:
/* 8057811C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80578120  7C 08 02 A6 */	mflr r0
/* 80578124  90 01 00 14 */	stw r0, 0x14(r1)
/* 80578128  A8 04 01 7A */	lha r0, 0x17a(r4)
/* 8057812C  2C 00 00 01 */	cmpwi r0, 1
/* 80578130  40 82 00 0C */	bne lbl_8057813C
/* 80578134  4B FF FE 45 */	bl aNSC_check_buy_item_single
/* 80578138  48 00 00 08 */	b lbl_80578140
lbl_8057813C:
/* 8057813C  4B FF FF 55 */	bl aNSC_check_buy_item_plural
lbl_80578140:
/* 80578140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80578144  7C 08 03 A6 */	mtlr r0
/* 80578148  38 21 00 10 */	addi r1, r1, 0x10
/* 8057814C  4E 80 00 20 */	blr 
