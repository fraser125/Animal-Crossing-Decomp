lbl_8051F624:
/* 8051F624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051F628  7C 08 02 A6 */	mflr r0
/* 8051F62C  38 60 00 72 */	li r3, 0x72
/* 8051F630  38 80 00 36 */	li r4, 0x36
/* 8051F634  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051F638  4B E7 E7 95 */	bl mEv_get_save_area
/* 8051F63C  A0 A3 00 00 */	lhz r5, 0(r3)
/* 8051F640  3C 80 81 1D */	lis r4, pf_string@ha /* 0x811D3958@ha */
/* 8051F644  38 64 39 58 */	addi r3, r4, pf_string@l /* 0x811D3958@l */
/* 8051F648  38 80 00 10 */	li r4, 0x10
/* 8051F64C  38 A5 06 2E */	addi r5, r5, 0x62e
/* 8051F650  4B EC F6 7D */	bl mString_Load_StringFromRom
/* 8051F654  4B EA 00 55 */	bl func_803BF6A8
/* 8051F658  3C A0 81 1D */	lis r5, pf_string@ha /* 0x811D3958@ha */
/* 8051F65C  38 80 00 01 */	li r4, 1
/* 8051F660  38 A5 39 58 */	addi r5, r5, pf_string@l /* 0x811D3958@l */
/* 8051F664  38 C0 00 10 */	li r6, 0x10
/* 8051F668  4B EA 07 6D */	bl mMsg_Set_item_str
/* 8051F66C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051F670  7C 08 03 A6 */	mtlr r0
/* 8051F674  38 21 00 10 */	addi r1, r1, 0x10
/* 8051F678  4E 80 00 20 */	blr 
