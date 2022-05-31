lbl_80581C28:
/* 80581C28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80581C2C  7C 08 02 A6 */	mflr r0
/* 80581C30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80581C34  A8 04 01 7A */	lha r0, 0x17a(r4)
/* 80581C38  2C 00 00 01 */	cmpwi r0, 1
/* 80581C3C  40 82 00 0C */	bne lbl_80581C48
/* 80581C40  4B FF FE 45 */	bl aNSC_check_buy_item_single
/* 80581C44  48 00 00 08 */	b lbl_80581C4C
lbl_80581C48:
/* 80581C48  4B FF FF 55 */	bl aNSC_check_buy_item_plural
lbl_80581C4C:
/* 80581C4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80581C50  7C 08 03 A6 */	mtlr r0
/* 80581C54  38 21 00 10 */	addi r1, r1, 0x10
/* 80581C58  4E 80 00 20 */	blr 
