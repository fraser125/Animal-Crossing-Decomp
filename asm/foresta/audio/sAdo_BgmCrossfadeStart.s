lbl_8062E32C:
/* 8062E32C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062E330  7C 08 02 A6 */	mflr r0
/* 8062E334  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062E338  4B 9E 2E 59 */	bl Na_BgmCrossfadeStart
/* 8062E33C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062E340  7C 08 03 A6 */	mtlr r0
/* 8062E344  38 21 00 10 */	addi r1, r1, 0x10
/* 8062E348  4E 80 00 20 */	blr 
