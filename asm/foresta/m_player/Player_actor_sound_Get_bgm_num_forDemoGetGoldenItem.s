lbl_804DFA38:
/* 804DFA38  2C 03 00 01 */	cmpwi r3, 1
/* 804DFA3C  41 82 00 28 */	beq lbl_804DFA64
/* 804DFA40  40 80 00 10 */	bge lbl_804DFA50
/* 804DFA44  2C 03 00 00 */	cmpwi r3, 0
/* 804DFA48  40 80 00 14 */	bge lbl_804DFA5C
/* 804DFA4C  48 00 00 28 */	b lbl_804DFA74
lbl_804DFA50:
/* 804DFA50  2C 03 00 03 */	cmpwi r3, 3
/* 804DFA54  40 80 00 20 */	bge lbl_804DFA74
/* 804DFA58  48 00 00 14 */	b lbl_804DFA6C
lbl_804DFA5C:
/* 804DFA5C  38 60 00 49 */	li r3, 0x49
/* 804DFA60  4E 80 00 20 */	blr 
lbl_804DFA64:
/* 804DFA64  38 60 00 4B */	li r3, 0x4b
/* 804DFA68  4E 80 00 20 */	blr 
lbl_804DFA6C:
/* 804DFA6C  38 60 00 4C */	li r3, 0x4c
/* 804DFA70  4E 80 00 20 */	blr 
lbl_804DFA74:
/* 804DFA74  38 60 00 4A */	li r3, 0x4a
/* 804DFA78  4E 80 00 20 */	blr 