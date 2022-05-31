lbl_804D3410:
/* 804D3410  3C 60 81 1D */	lis r3, mMkRm_search_table@ha /* 0x811D2F18@ha */
/* 804D3414  38 00 00 3C */	li r0, 0x3c
/* 804D3418  38 63 2F 18 */	addi r3, r3, mMkRm_search_table@l /* 0x811D2F18@l */
/* 804D341C  7C 64 1B 78 */	mr r4, r3
/* 804D3420  38 60 00 00 */	li r3, 0
/* 804D3424  7C 09 03 A6 */	mtctr r0
lbl_804D3428:
/* 804D3428  90 64 00 00 */	stw r3, 0(r4)
/* 804D342C  38 84 00 04 */	addi r4, r4, 4
/* 804D3430  42 00 FF F8 */	bdnz lbl_804D3428
/* 804D3434  4E 80 00 20 */	blr 
