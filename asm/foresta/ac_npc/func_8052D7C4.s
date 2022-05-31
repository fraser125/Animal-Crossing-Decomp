lbl_8052D7C4:
/* 8052D7C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052D7C8  7C 08 02 A6 */	mflr r0
/* 8052D7CC  7C 65 1B 78 */	mr r5, r3
/* 8052D7D0  7C 83 23 78 */	mr r3, r4
/* 8052D7D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052D7D8  38 85 00 28 */	addi r4, r5, 0x28
/* 8052D7DC  48 10 07 CD */	bl sAdo_OngenTrgStart
/* 8052D7E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052D7E4  7C 08 03 A6 */	mtlr r0
/* 8052D7E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8052D7EC  4E 80 00 20 */	blr 
