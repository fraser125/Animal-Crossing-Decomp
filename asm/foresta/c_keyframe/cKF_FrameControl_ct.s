lbl_80370384:
/* 80370384  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80370388  7C 08 02 A6 */	mflr r0
/* 8037038C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80370390  4B FF FF A1 */	bl func_80370330
/* 80370394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80370398  7C 08 03 A6 */	mtlr r0
/* 8037039C  38 21 00 10 */	addi r1, r1, 0x10
/* 803703A0  4E 80 00 20 */	blr 