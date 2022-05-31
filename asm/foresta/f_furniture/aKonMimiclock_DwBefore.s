lbl_80631A88:
/* 80631A88  2C 05 00 03 */	cmpwi r5, 3
/* 80631A8C  40 82 00 24 */	bne lbl_80631AB0
/* 80631A90  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80631A94  A8 09 00 04 */	lha r0, 4(r9)
/* 80631A98  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80631A9C  3C 63 00 02 */	addis r3, r3, 2
/* 80631AA0  A8 63 61 2A */	lha r3, 0x612a(r3)
/* 80631AA4  7C 03 00 50 */	subf r0, r3, r0
/* 80631AA8  B0 09 00 04 */	sth r0, 4(r9)
/* 80631AAC  48 00 00 28 */	b lbl_80631AD4
lbl_80631AB0:
/* 80631AB0  2C 05 00 06 */	cmpwi r5, 6
/* 80631AB4  40 82 00 20 */	bne lbl_80631AD4
/* 80631AB8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80631ABC  A8 09 00 04 */	lha r0, 4(r9)
/* 80631AC0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80631AC4  3C 63 00 02 */	addis r3, r3, 2
/* 80631AC8  A8 63 61 28 */	lha r3, 0x6128(r3)
/* 80631ACC  7C 03 00 50 */	subf r0, r3, r0
/* 80631AD0  B0 09 00 04 */	sth r0, 4(r9)
lbl_80631AD4:
/* 80631AD4  38 60 00 01 */	li r3, 1
/* 80631AD8  4E 80 00 20 */	blr 
