lbl_804974C0:
/* 804974C0  C0 03 00 00 */	lfs f0, 0(r3)
/* 804974C4  38 00 00 00 */	li r0, 0
/* 804974C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804974CC  4C 41 13 82 */	cror 2, 1, 2
/* 804974D0  40 82 00 14 */	bne lbl_804974E4
/* 804974D4  C0 03 00 04 */	lfs f0, 4(r3)
/* 804974D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804974DC  40 80 00 08 */	bge lbl_804974E4
/* 804974E0  38 00 00 01 */	li r0, 1
lbl_804974E4:
/* 804974E4  7C 03 03 78 */	mr r3, r0
/* 804974E8  4E 80 00 20 */	blr 
