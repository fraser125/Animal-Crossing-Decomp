lbl_8052C4B0:
/* 8052C4B0  88 03 07 4C */	lbz r0, 0x74c(r3)
/* 8052C4B4  7C 03 07 74 */	extsb r3, r0
/* 8052C4B8  34 03 FF FF */	addic. r0, r3, -1
/* 8052C4BC  4D 80 00 20 */	bltlr 
/* 8052C4C0  2C 00 00 09 */	cmpwi r0, 9
/* 8052C4C4  4C 80 00 20 */	bgelr 
/* 8052C4C8  1C 60 00 C0 */	mulli r3, r0, 0xc0
/* 8052C4CC  3C 80 81 1D */	lis r4, data_811D3978@ha /* 0x811D3978@ha */
/* 8052C4D0  80 A4 39 78 */	lwz r5, data_811D3978@l(r4)  /* 0x811D3978@l */
/* 8052C4D4  38 83 01 7A */	addi r4, r3, 0x17a
/* 8052C4D8  7C 65 20 AE */	lbzx r3, r5, r4
/* 8052C4DC  38 03 FF FF */	addi r0, r3, -1
/* 8052C4E0  7C 05 21 AE */	stbx r0, r5, r4
/* 8052C4E4  4E 80 00 20 */	blr 
