lbl_8063A6E4:
/* 8063A6E4  2C 05 00 04 */	cmpwi r5, 4
/* 8063A6E8  40 82 00 24 */	bne lbl_8063A70C
/* 8063A6EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8063A6F0  A8 09 00 04 */	lha r0, 4(r9)
/* 8063A6F4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8063A6F8  3C 63 00 02 */	addis r3, r3, 2
/* 8063A6FC  A8 63 61 2A */	lha r3, 0x612a(r3)
/* 8063A700  7C 03 00 50 */	subf r0, r3, r0
/* 8063A704  B0 09 00 04 */	sth r0, 4(r9)
/* 8063A708  48 00 00 28 */	b lbl_8063A730
lbl_8063A70C:
/* 8063A70C  2C 05 00 03 */	cmpwi r5, 3
/* 8063A710  40 82 00 20 */	bne lbl_8063A730
/* 8063A714  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8063A718  A8 09 00 04 */	lha r0, 4(r9)
/* 8063A71C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8063A720  3C 63 00 02 */	addis r3, r3, 2
/* 8063A724  A8 63 61 28 */	lha r3, 0x6128(r3)
/* 8063A728  7C 03 00 50 */	subf r0, r3, r0
/* 8063A72C  B0 09 00 04 */	sth r0, 4(r9)
lbl_8063A730:
/* 8063A730  38 60 00 01 */	li r3, 1
/* 8063A734  4E 80 00 20 */	blr 
