lbl_8062E590:
/* 8062E590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062E594  7C 08 02 A6 */	mflr r0
/* 8062E598  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062E59C  4B 9E 6F DD */	bl Na_Museum
/* 8062E5A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062E5A4  7C 08 03 A6 */	mtlr r0
/* 8062E5A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8062E5AC  4E 80 00 20 */	blr 
