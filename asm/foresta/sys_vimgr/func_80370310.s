lbl_80370310:
/* 80370310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80370314  7C 08 02 A6 */	mflr r0
/* 80370318  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037031C  4B D1 95 A5 */	bl VISetBlack
/* 80370320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80370324  7C 08 03 A6 */	mtlr r0
/* 80370328  38 21 00 10 */	addi r1, r1, 0x10
/* 8037032C  4E 80 00 20 */	blr 
