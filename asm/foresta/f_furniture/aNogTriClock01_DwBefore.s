lbl_80634D9C:
/* 80634D9C  2C 05 00 03 */	cmpwi r5, 3
/* 80634DA0  40 82 00 24 */	bne lbl_80634DC4
/* 80634DA4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80634DA8  A8 09 00 04 */	lha r0, 4(r9)
/* 80634DAC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80634DB0  3C 63 00 02 */	addis r3, r3, 2
/* 80634DB4  A8 63 61 2A */	lha r3, 0x612a(r3)
/* 80634DB8  7C 03 00 50 */	subf r0, r3, r0
/* 80634DBC  B0 09 00 04 */	sth r0, 4(r9)
/* 80634DC0  48 00 00 28 */	b lbl_80634DE8
lbl_80634DC4:
/* 80634DC4  2C 05 00 04 */	cmpwi r5, 4
/* 80634DC8  40 82 00 20 */	bne lbl_80634DE8
/* 80634DCC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80634DD0  A8 09 00 04 */	lha r0, 4(r9)
/* 80634DD4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80634DD8  3C 63 00 02 */	addis r3, r3, 2
/* 80634DDC  A8 63 61 28 */	lha r3, 0x6128(r3)
/* 80634DE0  7C 03 00 50 */	subf r0, r3, r0
/* 80634DE4  B0 09 00 04 */	sth r0, 4(r9)
lbl_80634DE8:
/* 80634DE8  38 60 00 01 */	li r3, 1
/* 80634DEC  4E 80 00 20 */	blr 
