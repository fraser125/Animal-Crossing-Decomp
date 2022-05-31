lbl_8052C210:
/* 8052C210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052C214  7C 08 02 A6 */	mflr r0
/* 8052C218  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052C21C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052C220  7C 7F 1B 78 */	mr r31, r3
/* 8052C224  4B FF FF 45 */	bl aNPC_getP_cloth_pal_rom
/* 8052C228  80 9F 00 68 */	lwz r4, 0x68(r31)
/* 8052C22C  38 A0 00 20 */	li r5, 0x20
/* 8052C230  4B AD AA 45 */	bl _JW_GetResourceAram
/* 8052C234  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 8052C238  38 80 00 20 */	li r4, 0x20
/* 8052C23C  4B B4 D9 E1 */	bl DCStoreRangeNoSync
/* 8052C240  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052C244  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052C248  7C 08 03 A6 */	mtlr r0
/* 8052C24C  38 21 00 10 */	addi r1, r1, 0x10
/* 8052C250  4E 80 00 20 */	blr 
