lbl_80404A18:
/* 80404A18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80404A1C  7C 08 02 A6 */	mflr r0
/* 80404A20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80404A24  48 00 00 D1 */	bl THA_isCrash
/* 80404A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80404A2C  7C 08 03 A6 */	mtlr r0
/* 80404A30  38 21 00 10 */	addi r1, r1, 0x10
/* 80404A34  4E 80 00 20 */	blr 
