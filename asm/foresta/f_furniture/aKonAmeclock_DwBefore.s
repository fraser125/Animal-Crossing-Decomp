lbl_806310C4:
/* 806310C4  2C 05 00 03 */	cmpwi r5, 3
/* 806310C8  40 82 00 24 */	bne lbl_806310EC
/* 806310CC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 806310D0  A8 09 00 04 */	lha r0, 4(r9)
/* 806310D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 806310D8  3C 63 00 02 */	addis r3, r3, 2
/* 806310DC  A8 63 61 2A */	lha r3, 0x612a(r3)
/* 806310E0  7C 03 00 50 */	subf r0, r3, r0
/* 806310E4  B0 09 00 04 */	sth r0, 4(r9)
/* 806310E8  48 00 00 28 */	b lbl_80631110
lbl_806310EC:
/* 806310EC  2C 05 00 05 */	cmpwi r5, 5
/* 806310F0  40 82 00 20 */	bne lbl_80631110
/* 806310F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 806310F8  A8 09 00 04 */	lha r0, 4(r9)
/* 806310FC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80631100  3C 63 00 02 */	addis r3, r3, 2
/* 80631104  A8 63 61 28 */	lha r3, 0x6128(r3)
/* 80631108  7C 03 00 50 */	subf r0, r3, r0
/* 8063110C  B0 09 00 04 */	sth r0, 4(r9)
lbl_80631110:
/* 80631110  38 60 00 01 */	li r3, 1
/* 80631114  4E 80 00 20 */	blr 
