lbl_80470DD0:
/* 80470DD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80470DD4  7C 08 02 A6 */	mflr r0
/* 80470DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80470DDC  4B FF FF AD */	bl aMR_GetFtrBankID
/* 80470DE0  4B FF FF CD */	bl aMR_BankNo2BankAddress
/* 80470DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80470DE8  7C 08 03 A6 */	mtlr r0
/* 80470DEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80470DF0  4E 80 00 20 */	blr 
