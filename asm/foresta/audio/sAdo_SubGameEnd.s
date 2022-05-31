lbl_8062E36C:
/* 8062E36C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062E370  7C 08 02 A6 */	mflr r0
/* 8062E374  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062E378  4B 9E 65 AD */	bl Na_SubGameEnd
/* 8062E37C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062E380  7C 08 03 A6 */	mtlr r0
/* 8062E384  38 21 00 10 */	addi r1, r1, 0x10
/* 8062E388  4E 80 00 20 */	blr 
