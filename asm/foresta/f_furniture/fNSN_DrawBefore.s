lbl_806346A0:
/* 806346A0  2C 05 00 03 */	cmpwi r5, 3
/* 806346A4  40 82 00 24 */	bne lbl_806346C8
/* 806346A8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 806346AC  A8 09 00 04 */	lha r0, 4(r9)
/* 806346B0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 806346B4  3C 63 00 02 */	addis r3, r3, 2
/* 806346B8  A8 63 61 2A */	lha r3, 0x612a(r3)
/* 806346BC  7C 03 00 50 */	subf r0, r3, r0
/* 806346C0  B0 09 00 04 */	sth r0, 4(r9)
/* 806346C4  48 00 00 28 */	b lbl_806346EC
lbl_806346C8:
/* 806346C8  2C 05 00 04 */	cmpwi r5, 4
/* 806346CC  40 82 00 20 */	bne lbl_806346EC
/* 806346D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 806346D4  A8 09 00 04 */	lha r0, 4(r9)
/* 806346D8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 806346DC  3C 63 00 02 */	addis r3, r3, 2
/* 806346E0  A8 63 61 28 */	lha r3, 0x6128(r3)
/* 806346E4  7C 03 00 50 */	subf r0, r3, r0
/* 806346E8  B0 09 00 04 */	sth r0, 4(r9)
lbl_806346EC:
/* 806346EC  38 60 00 01 */	li r3, 1
/* 806346F0  4E 80 00 20 */	blr 
