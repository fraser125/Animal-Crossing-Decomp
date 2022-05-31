lbl_804D207C:
/* 804D207C  2C 04 00 00 */	cmpwi r4, 0
/* 804D2080  4D 80 00 20 */	bltlr 
/* 804D2084  2C 04 00 3C */	cmpwi r4, 0x3c
/* 804D2088  4C 80 00 20 */	bgelr 
/* 804D208C  3C A0 80 6A */	lis r5, mMkRm_series_name@ha /* 0x8069CAA4@ha */
/* 804D2090  54 86 20 36 */	slwi r6, r4, 4
/* 804D2094  38 85 CA A4 */	addi r4, r5, mMkRm_series_name@l /* 0x8069CAA4@l */
/* 804D2098  38 00 00 10 */	li r0, 0x10
/* 804D209C  7C 84 32 14 */	add r4, r4, r6
/* 804D20A0  7C 09 03 A6 */	mtctr r0
lbl_804D20A4:
/* 804D20A4  88 04 00 00 */	lbz r0, 0(r4)
/* 804D20A8  38 84 00 01 */	addi r4, r4, 1
/* 804D20AC  98 03 00 00 */	stb r0, 0(r3)
/* 804D20B0  38 63 00 01 */	addi r3, r3, 1
/* 804D20B4  42 00 FF F0 */	bdnz lbl_804D20A4
/* 804D20B8  4E 80 00 20 */	blr 
