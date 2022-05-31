lbl_803ED980:
/* 803ED980  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803ED984  38 60 1F A4 */	li r3, 0x1fa4
/* 803ED988  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803ED98C  3C 84 00 02 */	addis r4, r4, 2
/* 803ED990  88 04 41 6E */	lbz r0, 0x416e(r4)
/* 803ED994  28 00 00 01 */	cmplwi r0, 1
/* 803ED998  4C 82 00 20 */	bnelr 
/* 803ED99C  38 60 30 70 */	li r3, 0x3070
/* 803ED9A0  4E 80 00 20 */	blr 
