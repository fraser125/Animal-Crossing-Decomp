lbl_80489B18:
/* 80489B18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80489B1C  7C 08 02 A6 */	mflr r0
/* 80489B20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80489B24  38 00 00 00 */	li r0, 0
/* 80489B28  80 63 00 08 */	lwz r3, 8(r3)
/* 80489B2C  28 03 00 00 */	cmplwi r3, 0
/* 80489B30  41 82 00 0C */	beq lbl_80489B3C
/* 80489B34  4B F5 90 B9 */	bl mQst_CheckLimitOver
/* 80489B38  7C 60 1B 78 */	mr r0, r3
lbl_80489B3C:
/* 80489B3C  7C 03 03 78 */	mr r3, r0
/* 80489B40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80489B44  7C 08 03 A6 */	mtlr r0
/* 80489B48  38 21 00 10 */	addi r1, r1, 0x10
/* 80489B4C  4E 80 00 20 */	blr 