lbl_804DFA0C:
/* 804DFA0C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DFA10  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DFA14  3C 63 00 03 */	addis r3, r3, 3
/* 804DFA18  88 03 85 BF */	lbz r0, -0x7a41(r3)
/* 804DFA1C  2C 00 00 01 */	cmpwi r0, 1
/* 804DFA20  41 82 00 08 */	beq lbl_804DFA28
/* 804DFA24  48 00 00 0C */	b lbl_804DFA30
lbl_804DFA28:
/* 804DFA28  38 60 00 49 */	li r3, 0x49
/* 804DFA2C  4E 80 00 20 */	blr 
lbl_804DFA30:
/* 804DFA30  38 60 00 4A */	li r3, 0x4a
/* 804DFA34  4E 80 00 20 */	blr 
