lbl_804C743C:
/* 804C743C  A0 A3 00 0E */	lhz r5, 0xe(r3)
/* 804C7440  38 80 00 05 */	li r4, 5
/* 804C7444  38 00 00 06 */	li r0, 6
/* 804C7448  2C 05 00 04 */	cmpwi r5, 4
/* 804C744C  41 82 00 20 */	beq lbl_804C746C
/* 804C7450  40 80 00 20 */	bge lbl_804C7470
/* 804C7454  2C 05 00 03 */	cmpwi r5, 3
/* 804C7458  40 80 00 0C */	bge lbl_804C7464
/* 804C745C  48 00 00 14 */	b lbl_804C7470
/* 804C7460  48 00 00 10 */	b lbl_804C7470
lbl_804C7464:
/* 804C7464  B0 83 00 0E */	sth r4, 0xe(r3)
/* 804C7468  48 00 00 08 */	b lbl_804C7470
lbl_804C746C:
/* 804C746C  B0 03 00 0E */	sth r0, 0xe(r3)
lbl_804C7470:
/* 804C7470  38 60 00 00 */	li r3, 0
/* 804C7474  4E 80 00 20 */	blr 
