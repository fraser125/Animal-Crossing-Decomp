lbl_8063186C:
/* 8063186C  2C 05 00 03 */	cmpwi r5, 3
/* 80631870  40 82 00 24 */	bne lbl_80631894
/* 80631874  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80631878  A8 09 00 04 */	lha r0, 4(r9)
/* 8063187C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80631880  3C 63 00 02 */	addis r3, r3, 2
/* 80631884  A8 63 61 2A */	lha r3, 0x612a(r3)
/* 80631888  7C 03 00 50 */	subf r0, r3, r0
/* 8063188C  B0 09 00 04 */	sth r0, 4(r9)
/* 80631890  48 00 00 28 */	b lbl_806318B8
lbl_80631894:
/* 80631894  2C 05 00 05 */	cmpwi r5, 5
/* 80631898  40 82 00 20 */	bne lbl_806318B8
/* 8063189C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 806318A0  A8 09 00 04 */	lha r0, 4(r9)
/* 806318A4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 806318A8  3C 63 00 02 */	addis r3, r3, 2
/* 806318AC  A8 63 61 28 */	lha r3, 0x6128(r3)
/* 806318B0  7C 03 00 50 */	subf r0, r3, r0
/* 806318B4  B0 09 00 04 */	sth r0, 4(r9)
lbl_806318B8:
/* 806318B8  38 60 00 01 */	li r3, 1
/* 806318BC  4E 80 00 20 */	blr 
