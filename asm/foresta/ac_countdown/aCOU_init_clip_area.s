lbl_805AC07C:
/* 805AC07C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AC080  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805AC084  3C A3 00 02 */	addis r5, r3, 2
/* 805AC088  80 05 60 DC */	lwz r0, 0x60dc(r5)
/* 805AC08C  28 00 00 00 */	cmplwi r0, 0
/* 805AC090  4C 82 00 20 */	bnelr 
/* 805AC094  3C 80 81 20 */	lis r4, aCOU_clip@ha /* 0x811FA078@ha */
/* 805AC098  3C 60 80 5B */	lis r3, func_805AC060@ha /* 0x805AC060@ha */
/* 805AC09C  38 84 A0 78 */	addi r4, r4, aCOU_clip@l /* 0x811FA078@l */
/* 805AC0A0  38 00 00 00 */	li r0, 0
/* 805AC0A4  90 85 60 DC */	stw r4, 0x60dc(r5)
/* 805AC0A8  38 63 C0 60 */	addi r3, r3, func_805AC060@l /* 0x805AC060@l */
/* 805AC0AC  90 64 00 00 */	stw r3, 0(r4)
/* 805AC0B0  80 65 60 DC */	lwz r3, 0x60dc(r5)
/* 805AC0B4  90 03 00 04 */	stw r0, 4(r3)
/* 805AC0B8  4E 80 00 20 */	blr 
