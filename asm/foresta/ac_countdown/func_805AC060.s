lbl_805AC060:
/* 805AC060  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AC064  38 00 00 01 */	li r0, 1
/* 805AC068  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805AC06C  3C 63 00 02 */	addis r3, r3, 2
/* 805AC070  80 63 60 DC */	lwz r3, 0x60dc(r3)
/* 805AC074  90 03 00 04 */	stw r0, 4(r3)
/* 805AC078  4E 80 00 20 */	blr 
