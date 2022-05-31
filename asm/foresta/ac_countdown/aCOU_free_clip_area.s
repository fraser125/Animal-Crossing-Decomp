lbl_805AC0BC:
/* 805AC0BC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AC0C0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805AC0C4  3C 63 00 02 */	addis r3, r3, 2
/* 805AC0C8  80 03 60 DC */	lwz r0, 0x60dc(r3)
/* 805AC0CC  28 00 00 00 */	cmplwi r0, 0
/* 805AC0D0  4D 82 00 20 */	beqlr 
/* 805AC0D4  38 00 00 00 */	li r0, 0
/* 805AC0D8  90 03 60 DC */	stw r0, 0x60dc(r3)
/* 805AC0DC  4E 80 00 20 */	blr 
