lbl_804E0898:
/* 804E0898  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E089C  38 00 00 00 */	li r0, 0
/* 804E08A0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E08A4  3C 63 00 03 */	addis r3, r3, 3
/* 804E08A8  B0 03 DB A6 */	sth r0, -0x245a(r3)
/* 804E08AC  4E 80 00 20 */	blr 
