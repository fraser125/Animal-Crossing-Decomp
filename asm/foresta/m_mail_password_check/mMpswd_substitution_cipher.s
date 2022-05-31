lbl_803BDAF8:
/* 803BDAF8  3C 80 80 65 */	lis r4, mMpswd_chg_code_table@ha /* 0x80656CEC@ha */
/* 803BDAFC  38 00 00 15 */	li r0, 0x15
/* 803BDB00  38 84 6C EC */	addi r4, r4, mMpswd_chg_code_table@l /* 0x80656CEC@l */
/* 803BDB04  7C 09 03 A6 */	mtctr r0
lbl_803BDB08:
/* 803BDB08  88 03 00 00 */	lbz r0, 0(r3)
/* 803BDB0C  7C 04 00 AE */	lbzx r0, r4, r0
/* 803BDB10  98 03 00 00 */	stb r0, 0(r3)
/* 803BDB14  38 63 00 01 */	addi r3, r3, 1
/* 803BDB18  42 00 FF F0 */	bdnz lbl_803BDB08
/* 803BDB1C  4E 80 00 20 */	blr 
