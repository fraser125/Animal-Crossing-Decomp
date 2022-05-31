lbl_805F8784:
/* 805F8784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F8788  7C 08 02 A6 */	mflr r0
/* 805F878C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F8790  7C 60 07 34 */	extsh r0, r3
/* 805F8794  2C 00 7F FF */	cmpwi r0, 0x7fff
/* 805F8798  41 82 00 1C */	beq lbl_805F87B4
/* 805F879C  7C A0 07 34 */	extsh r0, r5
/* 805F87A0  2C 00 7F FF */	cmpwi r0, 0x7fff
/* 805F87A4  41 82 00 10 */	beq lbl_805F87B4
/* 805F87A8  7C 83 23 78 */	mr r3, r4
/* 805F87AC  7C C4 33 78 */	mr r4, r6
/* 805F87B0  4B FF FF 7D */	bl mTG_change_mail
lbl_805F87B4:
/* 805F87B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F87B8  7C 08 03 A6 */	mtlr r0
/* 805F87BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805F87C0  4E 80 00 20 */	blr 
