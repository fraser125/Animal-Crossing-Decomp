lbl_804973B8:
/* 804973B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804973BC  7C 08 02 A6 */	mflr r0
/* 804973C0  7C 64 1B 78 */	mr r4, r3
/* 804973C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804973C8  38 64 01 88 */	addi r3, r4, 0x188
/* 804973CC  38 84 01 8C */	addi r4, r4, 0x18c
/* 804973D0  4B F1 17 9D */	bl mFI_GetNextBlockNum
/* 804973D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804973D8  7C 08 03 A6 */	mtlr r0
/* 804973DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804973E0  4E 80 00 20 */	blr 
